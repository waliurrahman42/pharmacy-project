package com.medibox.admin.reprository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.medibox.admin.model.Seller;
import com.medibox.admin.model.User;

public interface SellerReprository extends JpaRepository<Seller	, Integer> {

	@Query("select s from Seller s where s.sellerId=?1")
	Seller findBySellerId(Integer sellerId);

	@Query("select count(s) from Seller s ")
	int sellerCount();
	
	@Query("select s from Seller s where s.status=?1")
	List<Seller> findPendingList(Integer a);
	
	
	
}