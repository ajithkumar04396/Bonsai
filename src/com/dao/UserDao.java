package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.web.servlet.ModelAndView;

import com.bean.UserBean;
import com.utils.DataConnection;
import com.utils.UserStatic;

public class UserDao extends ApplicationDao{

	private static final String INSERT_USER=" insert into login(customer_id,usermail,password) values(?,?,?)";
	public boolean saveUser(final UserBean user){  
	      
		try {
			/*System.out.println(this.jdbcTemplate.getDataSource().getConnection());*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			PreparedStatement pre = con.prepareStatement(INSERT_USER);
			 
			pre.setString(1,user.getEmail());
			pre.setString(2,user.getEmail());
			pre.setString(3,user.getPassword()); 
		
			pre.executeUpdate();       
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return true;
	    
	}    
	
	
	public boolean saveproduct(final UserBean user)
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
	PreparedStatement pre;
	
		
		PreparedStatement pre1;
		pre1=con.prepareStatement("select product_id from inventory where product_id = ?");
		pre1.setString(1,user.getProduct_id());
		ResultSet rs=pre1.executeQuery();
		if(rs.next()) {
			if(rs.getString("product_id").equals(user.getProduct_id())) {
				PreparedStatement pre2;
				pre2=con.prepareStatement("UPDATE `inventory` SET `stock`= `stock`+ ? WHERE product_id = ?");
				pre2.setInt(1, user.getStock());
				pre2.setString(2,user.getProduct_id());
				pre2.executeUpdate();
				
			}
		}
			else{
				PreparedStatement pre3;
				pre = con.prepareStatement("insert into product(product_id,producttype,productname,productprice,productimage,productdescription) values(?,?,?,?,?,?)");
				
				pre.setString(1,user.getProduct_id());
				pre.setString(2,user.getProducttype());
				pre.setString(3,user.getProductname());
				pre.setFloat(4,user.getProductprice());
				pre.setString(5,user.getProductimage());
				pre.setString(6,user.getProductdescription());
				pre.executeUpdate();
				pre3=con.prepareStatement("insert into inventory (product_id,producttype,stock) values(?,?,?)");
				
				pre3.setString(1,user.getProduct_id());
				pre3.setString(2, user.getProducttype());
				pre3.setInt(3, user.getStock());
				pre3.executeUpdate();

			}
		
			} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		return true;	
	}

	public boolean addcart(UserBean user)
	{
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
		
	PreparedStatement pre;
	
		pre = con.prepareStatement("insert into cart(product_id,quality,total,customer_id) values(?,?,?,?)");
		float a,b,total;
		a=user.getQuality();
		b=user.getProductprice();
		total=a * b;
		pre.setString(1,user.getProduct_id());
		pre.setInt(2,user.getQuality());
		pre.setFloat(3, total);
		pre.setString(4,UserStatic.userId);
		
		pre.executeUpdate();
		PreparedStatement pre3;
		
		pre3 = con.prepareStatement("insert into deliverydetails(product_id,quality,Total,customer_id,status,delivery_status) values(?,?,?,?,'Payment pending','pending')");
	
		pre3.setString(1, user.getProduct_id());
		pre3.setInt(2, user.getQuality());
		pre3.setFloat(3, total);
		pre3.setString(4,UserStatic.userId);
		pre3.executeUpdate();
		
		
		PreparedStatement pre1;
		pre1=con.prepareStatement("UPDATE `inventory` SET `stock`= `stock`- ? WHERE product_id = ?");
        pre1.setInt(1, user.getQuality());
        pre1.setString(2,user.getProduct_id());
			pre1.executeUpdate();
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		return true;	
	}
	
	public boolean cartdell(String id,final UserBean user)
	{
		System.out.println("aaaa");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
	PreparedStatement pre;
	
		pre = con.prepareStatement("delete from cart where product_id = '?' and customer_id = '?'");
		
		pre.setString(1,id);
		pre.setString(2,UserStatic.userId);
		
		pre.executeUpdate();
		
				PreparedStatement pre2;
				pre2=con.prepareStatement("UPDATE `inventory` SET `stock`= `stock`+ ? WHERE product_id = ?");
				pre2.setInt(1, user.getStock());
				pre2.setString(2,user.getProduct_id());
				pre2.executeUpdate();
				
			
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		return true;	
	}

}
