package com.medibox.admin.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medibox.admin.dao.UserRepository;
import com.medibox.admin.model.User;
import com.medibox.admin.service.UserService;

@Service
public class UserServiceImplemention implements UserService  {
    @Autowired
	private  UserRepository userRepository;
	
	@Override
	public User addUser(User user) {
		if(  user!=null) {
			return userRepository.save(user);
		}
		return null;
	}

	@Override
	public List<User> listOfUser() {
		return userRepository.findAll();
	}

	@Override
	public User findByUserId(Integer UserId) {
		//if(  UserId!=null) {
			return userRepository.findByUserId(UserId);
		//}
		//return null;
	}

	@Override
	public void deleteUser(User user) {
		userRepository.delete(user);
		
	}

	@Override
	public void editUser(User user) {
		if(  user!=null) {
			userRepository.save(user);
		}
		
	}

}
