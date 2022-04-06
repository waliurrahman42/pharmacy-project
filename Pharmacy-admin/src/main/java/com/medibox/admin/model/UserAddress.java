package com.medibox.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class UserAddress {
		
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int userAddressId;
		
		@Column(nullable = false)
		private String name;
		
		@ManyToOne
		private User user;
		
		@Column(nullable = false)
		private String mobileNumber;
		
		@Column(nullable = false)
		private String locality;
		
		private String areaStreet;
		
		private String landmark;
		
		@Column(nullable = false , length = 50)
		private String city;
		
		@Column(nullable = false)
		private String state;
		
		@Column(nullable = false , length = 6)
		private int pincode;
		
		
		
		public int getUserAddressId() {
			return userAddressId;
		}
		public void setUserAddressId(int userAddressId) {
			this.userAddressId = userAddressId;
		}
		
		
		
	
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public String getMobileNumber() {
			return mobileNumber;
		}
		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}
		public String getLocality() {
			return locality;
		}
		public void setLocality(String locality) {
			this.locality = locality;
		}
		public String getAreaStreet() {
			return areaStreet;
		}
		public void setAreaStreet(String areaStreet) {
			this.areaStreet = areaStreet;
		}
		public String getLandmark() {
			return landmark;
		}
		public void setLandmark(String landmark) {
			this.landmark = landmark;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public int getPincode() {
			return pincode;
		}
		public void setPincode(int pincode) {
			this.pincode = pincode;
		}
		
		
		@Override
		public String toString() {
			return "UserAddress [userAddressId=" + userAddressId + ", userId=" + user + ", mobileNumber="
					+ mobileNumber + ", locality=" + locality + ", areaStreet=" + areaStreet + ", landmark=" + landmark
					+ ", city=" + city + ", state=" + state + ", pincode=" + pincode + "]";
		}
		
		

}

	
	
	

