package com.storemanagement.storemanagement.serviceinterface;

import java.util.List;

import com.storemanagement.storemanagement.model.User;

public interface UserService {
	
	List<User> viewUser();
	void insertUser(User user);
	void deleteUser(int personId);
	User editpage(int personId);
	

}
