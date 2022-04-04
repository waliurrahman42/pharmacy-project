package com.medibox.admin.service;

import java.util.List;

import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.UserSignup;

public interface UserSignupService {

	
	UserSignup addUser(UserSignup user);

	List<UserSignup> listOfUser();
	
	UserSignup findByUserId(Integer UserId);
	
	void deleteUser(UserSignup user);

	void editUser(UserSignup user);
	
	
	
}
