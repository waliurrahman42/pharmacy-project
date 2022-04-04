package com.medibox.admin.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.medibox.admin.model.UserSignup;

public interface UserSignupRepository extends JpaRepository<UserSignup, Integer> {

	
	@Query("select u from UserSignup u where u.UserId=?1")
	UserSignup findByUserId(Integer userId);

}
