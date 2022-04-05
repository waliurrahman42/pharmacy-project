package com.medibox.admin.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medibox.admin.dao.UserSignupRepository;
import com.medibox.admin.model.UserSignup;
import com.medibox.admin.service.UserSignupService;

@Service
public class UserSignupServiceImplemention implements UserSignupService  {
    @Autowired
	UserSignupRepository userSignuprepository;
	
	@Override
	public UserSignup addUser(UserSignup user) {
		if(  user!=null) {
			return userSignuprepository.save(user);
		}
		return null;
	}

	@Override
	public List<UserSignup> listOfUser() {
		return userSignuprepository.findAll();
	}

	@Override
	public UserSignup findByUserId(Integer UserId) {
		if(  UserId!=null) {
			return userSignuprepository.findByUserId(UserId);
		}
		return null;
	}

	@Override
	public void deleteUser(UserSignup user) {
		userSignuprepository.delete(user);
		
	}

	@Override
	public void editUser(UserSignup user) {
		if(  user!=null) {
			 userSignuprepository.save(user);
		}
		
	}

}
