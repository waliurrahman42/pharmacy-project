package com.medibox.admin.service;

import java.util.List;

import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.User;

public interface UserService {

	
	User addUser(User user);

	List<User> listOfUser();
	
	User findByUserId(Integer UserId);
	
	void deleteUser(User user);

	void editUser(User user);
	
	
	int countUser();
}
