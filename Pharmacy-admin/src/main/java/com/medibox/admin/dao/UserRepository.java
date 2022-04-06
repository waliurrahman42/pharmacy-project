package com.medibox.admin.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.medibox.admin.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	
	@Query("select u from User u where u.userId=?1")
	User findByUserId(Integer userId);

}
