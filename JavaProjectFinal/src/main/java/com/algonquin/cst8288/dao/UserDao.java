package com.algonquin.cst8288.dao;

public interface UserDao {

	boolean isValidUser(String username, String password);
	boolean addUser(User user);

}
