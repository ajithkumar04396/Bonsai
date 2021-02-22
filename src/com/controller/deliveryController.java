package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.UserBean;
@Controller
public class deliveryController {
	@Autowired
	
	@RequestMapping("/deliveryperson")
	public ModelAndView show() {
		
	
		//Dao.saveUser(user);
		return new ModelAndView("deliverypdetails");
	}
	
	@RequestMapping("/savedelperson")
	public ModelAndView save(@ModelAttribute("user") UserBean user,HttpSession session) {
		if(session.getAttribute("usermail")!=null){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			PreparedStatement pre =  con.prepareStatement("select * from login where usermail = ? ");
			pre.setString(1, user.getEmail());
			ResultSet rs= pre.executeQuery();
			if(rs.next()) {
				if(rs.getString("usermail").equals(user.getEmail())) {
					String message ="user already exist";
					return new ModelAndView("hellopage","message", message);
				}
			}
		
		PreparedStatement pre1 = con.prepareStatement("insert into login(customer_id,usermail,password,usertype) values(?,?,?,'delivery')");
		 
		pre1.setString(1,user.getEmail());
		pre1.setString(2,user.getEmail());
		pre1.setString(3,user.getPassword()); 
		pre1.executeUpdate();       
		
		
			PreparedStatement pre4 = con.prepareStatement("select login_id from login where customer_id=?");
			pre4.setString(1, user.getEmail());
			ResultSet rss= pre4.executeQuery();
			if(rss.next()) {
				System.out.print("1234");
				System.out.print(rss.getString("login_id"));
			}
			
			PreparedStatement pre2 =  con.prepareStatement("INSERT INTO deliveryperson(dp_name, dp_age, dp_phoneno, dp_address, dp_altphoneno, dp_gender, dp_dob,login_id) VALUES (?,?,?,?,?,?,?,?)");
		
			pre2.setString(1,user.getDelpname());
			pre2.setString(2,user.getDelpage());
			pre2.setString(3,user.getDelpphone()); 
			pre2.setString(4,user.getDelpadd());
			pre2.setString(5,user.getDelpaltphone());
			pre2.setString(6,user.getDelpgender());
			pre2.setString(7,user.getDelpdob());
			pre2.setString(8, rss.getString("login_id"));
			pre2.executeUpdate();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:adminpage.html");
		}
		
		else
		{
			return new ModelAndView("redirect:adminsessionpage.html");
		}
		//Dao.saveUser(user);
		
	}
	
	
}
