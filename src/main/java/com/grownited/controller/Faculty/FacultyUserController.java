package com.grownited.controller.Faculty;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

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
public class FacultyUserController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserDetailRepository userDetailRepository;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("/faculty/newStudent")
	public String facultyNewUser(Model model) {
		List<UserEntity> students = userRepository.findByRole("STUDENT");
		model.addAttribute("students", students);
		return "Faculty/FacultyNewUser";
	}
	
	@GetMapping("/faculty/listStudent")
	public String facultyListUser(Model model) {
		
		List<UserEntity> students = userRepository.findByRole("STUDENT");
		model.addAttribute("students", students);
		return "Faculty/FacultyListUser";
	}
	
	@PostMapping("/faculty/saveStudent")
	public String facultySaveUser(UserEntity userEntity, UserDetailEntity userDetailEntity, MultipartFile profilePic) {

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

		return "redirect:/faculty/listStudent";
	}

}
