package com.medibox.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Seller {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sellerId;
	
	@Column(nullable = false)
	private String fullName;
	
	@Column(nullable = false)
	private String emailId;
	
	@Column(nullable = false)
	private String password;
	
	@Column(columnDefinition = "integer default 0") 
	private int status;
	
	@Column(nullable = false)
	private String shopName;
	
	@Column(nullable = false)
	private String shopeRegNo;
	
	@Column(nullable = false)
	private String shopContactNo;
	
	@Column(nullable = false,length = 500)
	private String shopAddress;
	
	@Column(nullable = false)
	private int shopPincode;
	
	
	private String documentUrl;

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopeRegNo() {
		return shopeRegNo;
	}

	public void setShopeRegNo(String shopeRegNo) {
		this.shopeRegNo = shopeRegNo;
	}

	public String getShopContactNo() {
		return shopContactNo;
	}

	public void setShopContactNo(String shopContactNo) {
		this.shopContactNo = shopContactNo;
	}

	public String getShopAddress() {
		return shopAddress;
	}

	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}

	public int getShopPincode() {
		return shopPincode;
	}

	public void setShopPincode(int shopPincode) {
		this.shopPincode = shopPincode;
	}

	public String getDocumentUrl() {
		return documentUrl;
	}

	public void setDocumentUrl(String documentUrl) {
		this.documentUrl = documentUrl;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", fullName=" + fullName + ", emailId=" + emailId + ", password="
				+ password + ", status=" + status + ", shopName=" + shopName + ", shopeRegNo=" + shopeRegNo
				+ ", shopContactNo=" + shopContactNo + ", shopAddress=" + shopAddress + ", shopPincode=" + shopPincode
				+ ", documentUrl=" + documentUrl + "]";
	}
}
