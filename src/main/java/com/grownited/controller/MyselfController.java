package com.grownited.controller;

import java.io.IOException;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
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

import jakarta.servlet.http.HttpSession;

@Controller
public class MyselfController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserDetailRepository userDetailRepository;
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("/viewMyProfile")
	public String ViewMyProfile(HttpSession session, Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Optional<UserDetailEntity> userDetailOpt = userDetailRepository.findByUserId(user.getUserId());
		UserDetailEntity userDetail = userDetailOpt.orElse(null);
		model.addAttribute("user",user);
		model.addAttribute("userDetail", userDetail);
		
		return("ViewMyself");
	}
	
	@GetMapping("/deleteMyself")
	public String DeleteMyProfile(HttpSession session, Model model) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		userDetailRepository.deleteByUserId(user.getUserId());
		
		userRepository.deleteById(user.getUserId());
		session.invalidate();
		
		
		return("Signup");
	}
	
	@GetMapping("/editMyself")
	public String editUser(HttpSession session, Model model) {
		UserEntity userfromsession = (UserEntity) session.getAttribute("user");
	    Optional<UserEntity> useropt = userRepository.findById(userfromsession.getUserId());
	    if(useropt.isPresent()) {
	    	UserEntity user = useropt.get();
	    	model.addAttribute("user", user);
	    Optional<UserDetailEntity> userDetail = userDetailRepository.findByUserId(user.getUserId());
	    userDetail.ifPresent(detail -> model.addAttribute("userDetail", detail));
	    return "EditMyself";
	    }

	    else {
	        return "redirect:/viewMyProfile"; // fallback if not found
	    }
	}

	@PostMapping("/updateMyself")
	public String updateUser(HttpSession session, UserEntity newUserEntity, UserDetailEntity newUserDetailEntity) {
	    
		UserEntity User = (UserEntity) session.getAttribute("user");
		
		Optional<UserDetailEntity> userDetailOpt = userDetailRepository.findByUserId(User.getUserId());
		if (userDetailOpt.isPresent()) {
			
			UserDetailEntity userDetail = userDetailOpt.get();
			
			userDetail.setCity(newUserDetailEntity.getCity());
			userDetail.setCountry(newUserDetailEntity.getCountry());
			userDetail.setQualification(newUserDetailEntity.getQualification());
			userDetail.setState(newUserDetailEntity.getState());
			
		}
		
		User.setBirthYear(newUserEntity.getBirthYear());
		User.setFirstName(newUserEntity.getFirstName());
		User.setLastName(newUserEntity.getLastName());
		User.setGender(newUserEntity.getGender());
		User.setContactNum(newUserEntity.getContactNum());
		
	    return "redirect:/viewMyProfile";
	}
	
	@GetMapping("/editMyProfilePic")
	public String editUserProfilePic() {
		return "EditMyProfilePic";
	}
	
	@PostMapping("updateMyProfilePic")
	public String updateUserProfilePic(HttpSession session, MultipartFile profilePic) {
		UserEntity userEntity = (UserEntity) session.getAttribute("user");
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
		return "redirect:/viewMyProfile";
	}



}
