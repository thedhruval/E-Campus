package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

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

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	UserDetailRepository userDetailRepository;

	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	Cloudinary cloudinary;

	@GetMapping("/newUser")
	public String newUser() {

		return "NewUser";
	}

	@PostMapping("saveUser")
	public String saveUser(UserEntity userEntity, UserDetailEntity userDetailEntity, MultipartFile profilePic) {

		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());

		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
		userEntity.setPassword(encodedPassword);

		try {
			if (profilePic != null && !profilePic.isEmpty()) {
				Map map = cloudinary.uploader().upload(profilePic.getBytes(), null);
				String profilePicURL = map.get("secure_url").toString();
				userEntity.setProfilePicURL(profilePicURL);
				}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		userRepository.save(userEntity);
		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);

		return "redirect:/listUser";
	}

	@GetMapping("listUser")
	public String listUser(Model model) {

		List<UserEntity> allUser = userRepository.findAll();
		model.addAttribute("userList", allUser);
		return "ListUser";
	}

	@GetMapping("viewUser")
	public String viewUser(Integer userId, Model model) {

		Optional<UserEntity> opUser = userRepository.findById(userId);
		Optional<UserDetailEntity> opUserDetail = userDetailRepository.findByUserId(userId);

		if (opUser.isEmpty()) {
			return "admin-dashboard";
		}

		else {

			UserEntity userEntity = opUser.get();
			UserDetailEntity userDetailEntity = opUserDetail.get();

			model.addAttribute("user", userEntity);
			model.addAttribute("userDetail", userDetailEntity);
			return "ViewUser";
		}

	}

	@GetMapping("deleteUser")
	public String deleteUser(Integer userId) {

		userRepository.deleteById(userId);
		userDetailRepository.deleteByUserId(userId);
		return "redirect:/listUser";
	}
	
	@GetMapping("/editUser")
	public String editUser(Integer userId, Model model) {
	    Optional<UserEntity> user = userRepository.findById(userId);
	    Optional<UserDetailEntity> userDetail = userDetailRepository.findByUserId(userId);

	    if (user.isPresent()) {
	        model.addAttribute("user", user.get());
	        userDetail.ifPresent(detail -> model.addAttribute("userDetail", detail));
	        return "EditUser";
	    } else {
	        return "redirect:/listUser"; // fallback if not found
	    }
	}

	@PostMapping("/updateUser")
	public String updateUser(UserEntity newUserEntity, UserDetailEntity newUserDetailEntity) {
	    Optional<UserEntity> user = userRepository.findById(newUserEntity.getUserId());
	    if (user.isPresent()) {
	        UserEntity dbUser = user.get();

	        // Update role
	        dbUser.setRole(newUserEntity.getRole());

	        // Update active status (true/false from dropdown)
	        dbUser.setActive(newUserEntity.getActive());

	        // Profile picture handling via dropdown
	        if ("NULL".equals(newUserEntity.getProfilePicURL())) {
	            dbUser.setProfilePicURL(null);
	        } else {
	            dbUser.setProfilePicURL(newUserEntity.getProfilePicURL());
	        }

	        userRepository.save(dbUser);

	        // Update UserDetailEntity
	        Optional<UserDetailEntity> userDetail = userDetailRepository.findByUserId(dbUser.getUserId());
	        if (userDetail.isPresent()) {
	            UserDetailEntity dbDetail = userDetail.get();
	            dbDetail.setQualification(newUserDetailEntity.getQualification());
	            userDetailRepository.save(dbDetail);
	        } else {
	            // If no detail exists, create new
	            newUserDetailEntity.setUserId(dbUser.getUserId());
	            userDetailRepository.save(newUserDetailEntity);
	        }
	    }
	    return "redirect:/listUser";
	}

}
