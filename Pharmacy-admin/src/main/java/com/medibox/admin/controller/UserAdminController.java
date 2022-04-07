package com.medibox.admin.controller;

import java.util.List;import org.aspectj.weaver.NewConstructorTypeMunger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medibox.admin.model.User;
import com.medibox.admin.model.UserAddress;
import com.medibox.admin.service.UserAddressService;
import com.medibox.admin.service.UserService;
import com.medibox.admin.service.implement.UserServiceImplemention;



@Controller
public class UserAdminController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserAddressService uAddService;
	
	
	
	@RequestMapping("/Users")
	public String Users(Model m) {
		List<User>	users=userService.listOfUser();
		m.addAttribute("Userlist", users);
		System.out.println(users);
		return "Users";
	}
	
	
	/*
	 * @RequestMapping("/UserDetails") public String UserSDetailsList(Model m) {
	 * List<User> users=userService.listOfUser();
	 * 
	 * m.addAttribute("Userlist", users); System.out.println(users); return
	 * "UserDetails"; }
	 */

	@GetMapping("/UserDetailsFind")
	public String UserDetails(@RequestParam("uid")Integer uid,Model m) {
		m.addAttribute("currentuser", userService.findByUserId(uid));
		return "UserDetails";
	}
	
	//adding data in database
	@PostMapping("/addaddress")
	public String saveUserAddress(UserAddress uAdd, Model m) {
		System.out.println("saveUserAddress");
		if(uAdd.getUser()!=null) {
			uAddService.addUserAddress(uAdd);
			m.addAttribute("addressSave", true);
			m.addAttribute("currentuser", userService.findByUserId(uAdd.getUser().getUserId()));
			return "UserDetails";
		}
		m.addAttribute("currentuser", userService.findByUserId(uAdd.getUser().getUserId()));
		return "UserDetails";
	}
	
	
//	@PostMapping("/UserDetails/deleteAddress/{uAId}")
//	public String deleteAddress(@PathVariable("uAId") Integer uid, Model m) {
//		UserAddress userAddress=uAddService.findByUserAddressId(uid);
//		if(userAddress!=null) {
//			uAddService.deleteUserAddress(userAddress);
//			m.addAttribute("deletedAdd", true);
//			m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
//			return "UserDetails";
//		}
//		
//		m.addAttribute("deletedAdd", false);
//		m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
//		return "UserDetails";
//	}
//	
//	@PostMapping("/UserDetails/editAddress/{uAId}")
//	public String editAddressForm(@PathVariable("uAId") Integer uid, Model m) {
//		UserAddress userAddress=uAddService.findByUserAddressId(uid);
//		if(userAddress!=null) {
//			m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
//			m.addAttribute("editAddForm", true);
//			m.addAttribute("editAddFormDetails", userAddress);
//			return "UserDetails";
//		}
//		
//		m.addAttribute("editAddForm", false);
//		m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
//		return "UserDetails";
//	}
	
	
	
	//useraddres edit data sending on form 
	@GetMapping("/editAddress")
	public String editAddForm(@RequestParam("userAId") Integer uid, Model m) {
		UserAddress userAddress=uAddService.findByUserAddressId(uid);
		if(userAddress!=null) {
			m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
			
			m.addAttribute("editAddFormDetails", userAddress);
			m.addAttribute("editAddForm", true);
			return "UserDetails";
		}
		m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
		return "UserDetails";
	}
	
	//updating user  
	@PostMapping("/updateAddress")
	public String updateUserAddress(UserAddress uAdd, Model m) {
		System.out.println("update UserAddress");
			uAddService.addUserAddress(uAdd);
			m.addAttribute("currentuser", userService.findByUserId(uAdd.getUser().getUserId()));
			return "UserDetails";
	}
	
	
	
	//deletin user address
	@GetMapping("/deleteAddress")
	public String deleteUAddress(@RequestParam("userAId") Integer uid, Model m) {
		UserAddress userAddress=uAddService.findByUserAddressId(uid);
		if(userAddress!=null) {
			uAddService.deleteUserAddress(userAddress);
			m.addAttribute("deletedAdd", true);
			m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
			return "UserDetails";
		}
		m.addAttribute("currentuser", userService.findByUserId(userAddress.getUser().getUserId()));
		return "UserDetails";
	}
}
