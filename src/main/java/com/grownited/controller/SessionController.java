package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Map;
import java.util.Optional;
import java.util.Random;
import java.util.random.RandomGenerator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	UserDetailRepository userDetailRepository;

	@Autowired
	MailerService mailerService;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	Cloudinary cloudinary;

	@GetMapping("/signup")
	public String openSignupPage() {
		return "Signup"; // jsp name

	}

	@GetMapping("/login")
	public String openLoginPage() {
		return "Login"; // jsp name

	}

	@GetMapping("/forgotpassword")
	public String openForgotPasswordPage() {
		return "ForgotPassword"; // jsp name

	}

	@PostMapping("/sendOtp")
	public String sendOtp(String email, Model model) {
		Optional<UserEntity> op = userRepository.findByEmail(email);
		if(op.isPresent()){ UserEntity user = op.get();
		String otp = String.valueOf(new Random().nextInt(999999)); // 6-digit OTP
		user.setOtp(otp); userRepository.save(user);
		mailerService.sendOtpMail(user, otp);
		model.addAttribute("email", email);
		return "ChangePassword"; }
		else { model.addAttribute("error", "Email not found");
		return "ForgotPassword";
		}
	}

	@PostMapping("/changePassword")
	public String changePassword(String email, String otp, String newPassword, Model model) {
	    Optional<UserEntity> op = userRepository.findByEmail(email);
	    if(op.isPresent()){
	        UserEntity user = op.get();
	        if(user.getOtp() != null && user.getOtp().equals(otp)){
	            user.setPassword(passwordEncoder.encode(newPassword));
	            user.setOtp(null); // clear OTP
	            userRepository.save(user);
	            return "Login";
	        } else {
	            model.addAttribute("error", "Invalid OTP");
	            return "ChangePassword";
	        }
	    } else {
	        model.addAttribute("error", "Email not found");
	        return "ForgotPassword";
	    }
	}


	@PostMapping("/register")
	public String register(UserEntity userEntity, UserDetailEntity userDetailEntity, MultipartFile profilePic) {
		System.out.println(userEntity.getFirstName());
		System.out.println(userDetailEntity.getCity());

		userEntity.setRole("STUDENT");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());

		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
		userEntity.setPassword(encodedPassword);

		// file uploading
		System.out.println(profilePic.getOriginalFilename());

		try {
			Map map = cloudinary.uploader().upload(profilePic.getBytes(), null);
			System.out.println(map);
			String profilePicURL = map.get("secure_url").toString();
			System.out.println(profilePicURL);
			userEntity.setProfilePicURL(profilePicURL);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		userRepository.save(userEntity);
		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);

		mailerService.sendWelcomeMail(userEntity);

		return "Login";
	}

	@PostMapping("/authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {

		Optional<UserEntity> op = userRepository.findByEmail(email);

		if (op.isPresent()) {

			UserEntity dbUser = op.get();
			session.setAttribute("user", dbUser);

			if (passwordEncoder.matches(password, dbUser.getPassword())) { // (password typer i.e. plaintext, password
																			// stored in database i.e. encrypted
																			// password)

				// if(dbUser.getPassword().equals(password)) {

				if (dbUser.getRole().equals("ADMIN")) {
					return "redirect:/admin-dashboard";
				} else if (dbUser.getRole().equals("FACULTY")) {
					return "redirect:/faculty/faculty-dashboard";
				} else if (dbUser.getRole().equals("STUDENT")) {
					return "redirect:/student/student-dashboard";
				}
			}
		}

		model.addAttribute("error", "Invalid Credentials");
		return "Login";
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {

		session.invalidate();
		return "Login";
	}

}
