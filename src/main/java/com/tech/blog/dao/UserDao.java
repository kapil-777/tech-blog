package com.tech.blog.dao;

import java.sql.*;

import javax.swing.text.StyledEditorKit.BoldAction;

import com.tech.blog.entities.User;


public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	//method : user to database
	
	public boolean saveUser(User user) {
		boolean f = false;
		try {
			
			//create insert query
			
			String q = "insert into user(name,email,password) values(?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(q);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			
			pstmt.executeUpdate();
			f = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	//get user by email and password
	
	public User getUserByEmailAndPassword(String email,String password) {
		User user = null;
		try {
			
			String q = "select * from user where email = ? and password = ?";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet set = pstmt.executeQuery();
			if (set.next()) {
				user = new User();
				user.setId(set.getInt("id"));
				user.setName(set.getString("name"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	//method : update the user into the db
	
	public boolean updateUser(User user) {
		boolean flag = false;
		try {
			 
			String query = "update user set name = ? , email = ? , password = ? where id = ?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setInt(4, user.getId());
			
			pstmt.executeUpdate();
			
			flag = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return flag;
	}
}
