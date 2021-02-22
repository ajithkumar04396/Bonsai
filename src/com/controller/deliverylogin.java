package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.UserBean;
import com.utils.UserStatic;
@Controller
public class deliverylogin {
	@Autowired

	@RequestMapping("/deliverlogin")
	public ModelAndView show() {
	
		
		
		//Dao.saveUser(user);
		return new ModelAndView("dlogin");// will redirect to viewemp
											// request mapping
	}
	@RequestMapping("/dsuccess")
	public ModelAndView show6() {
	
		
		
		//Dao.saveUser(user);
		return new ModelAndView("success");// will redirect to viewemp
											// request mapping
	}
	
	@RequestMapping("/dassign")
	public ModelAndView show1() {
	
		
		
		//Dao.saveUser(user);
		return new ModelAndView("assign");		
	}
	@RequestMapping("/logoutd")
	public ModelAndView show7() {
	
		
		
		//Dao.saveUser(user);
		return new ModelAndView("dlogout");		
	}
	@RequestMapping("/viewdeliverypersion")
	public ModelAndView show8() {
		List<UserBean> listOfUser =  new ArrayList<>();
		//Connection con =DataConnection.getConnection();
	
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			PreparedStatement pre;
			pre = con.prepareStatement("SELECT * FROM `deliveryperson` WHERE 1 ");
			//pre.setString(1, "admin");
			ResultSet rs= pre.executeQuery();
			
			while(rs.next()){
				UserBean user = new UserBean();
				user.setDp_id(rs.getInt("dp_id"));
				user.setDp_name(rs.getString("dp_name"));
				user.setDp_age(rs.getString("dp_age"));
				user.setDp_phoneno(rs.getString("dp_phoneno"));
				user.setDp_dob(rs.getString("dp_dob"));
				user.setDp_gender(rs.getString("dp_gender"));
				user.setLogin_id(rs.getString("login_id"));
				listOfUser.add(user);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		

		return new ModelAndView("viewemp","list",listOfUser);// will redirect to viewemp
														// request mapping

		
		
		//Dao.saveUser(user);
		
	}
	
	@RequestMapping(value = "/logoutactiond", method=RequestMethod.POST)
	public ModelAndView save9(@ModelAttribute("user") UserBean user,HttpSession session ) {
		UserStatic.userId="1";
		session.removeAttribute("usermail");
		
		
		System.out.println(session.getAttribute("usermail"));
		 
		
		 return new ModelAndView("redirect:deliverlogin.html");

	}
	@RequestMapping("/dcorderdetails")
	public ModelAndView show3(@RequestAttribute("id") int id) {
		List<UserBean> listOfUser =  new ArrayList<>();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			PreparedStatement pre;
			ResultSet rs;
			pre = con.prepareStatement("select c.custname,c.custaddress,c.custphoneno,c.custaltphoneno,c.custemail,c.custgender,p.product_id,p.productname,p.productprice,d.delivery_id,d.quality,d.total from customer c,product p,deliverydetails d where c.customer_id=d.customer_id and p.product_id=d.product_id and d.delivery_id=?");
			pre.setInt(1, id);
			rs= pre.executeQuery();
			
			while(rs.next()){
				UserBean user = new UserBean();
				user.setCustname(rs.getString("custname"));
				user.setCustaddress(rs.getString("custaddress"));
				user.setCustphoneno(rs.getString("custphoneno"));
				user.setCustaltphoneno(rs.getString("custaltphoneno"));
				user.setCustemail(rs.getString("custemail"));
				user.setCustgender(rs.getString("custgender"));
				user.setProduct_id(rs.getString("product_id"));
				user.setProductname(rs.getString("productname"));
				user.setProductprice(rs.getFloat("productprice"));
				user.setTotal(rs.getFloat("total"));
				user.setQuality(rs.getInt("quality"));
				user.setDelivery_id(rs.getInt("delivery_id"));
				
				
				listOfUser.add(user);
			
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		

		
		return new ModelAndView("corderdetails","list",listOfUser);// will redirect to viewemp
														// request mapping		
	}
	@RequestMapping("/dorders")
	public ModelAndView show2() {
	
		
		
		List<UserBean> listOfUser =  new ArrayList<>();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			PreparedStatement pre;
			ResultSet rs;
	
			 
			pre = con.prepareStatement("select * from deliverydetails where delivery_status='pending' and status='Payment done' ");
			//pre.setString(1, UserStatic.userId);
			 rs= pre.executeQuery();
			
			while(rs.next()){
				UserBean user = new UserBean();
				user.setProduct_id(rs.getString("product_id"));
				user.setTotal(rs.getFloat("total"));
				user.setQuality(rs.getInt("quality"));
				user.setCustomer_id(rs.getString("customer_id"));
				user.setDelivery_id(rs.getInt("delivery_id"));
				
				System.out.println(UserStatic.Psum);

				listOfUser.add(user);
			
			}
			
          
			System.out.println(UserStatic.Psum);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		

		
		return new ModelAndView("orders","list",listOfUser);// will redirect to viewemp
														// request mapping	
	}
	
	@RequestMapping(value = "/dlogin", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("user") UserBean user,HttpSession session ) {
		
		String msg="User does not Exist";
	
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
			System.out.println(user.getEmail());
			PreparedStatement pre =  con.prepareStatement("select l.usermail,l.password,d.dp_id from login l,deliveryperson d where l.login_id=d.login_id and l.usermail= ? and l.password =? and l.usertype='delivery' ");
			
			pre.setString(1, user.getEmail());
			pre.setString(2,user.getPassword());
			ResultSet rs = pre.executeQuery();
			while(rs.next())
			{
				System.out.println(rs.getRow());
				if(rs.getRow()>0)
				{
					System.out.println(rs.getString("usermail"));
					session.setAttribute("usermail", user.getEmail());
					session.setMaxInactiveInterval(30*60);
					System.out.println("The session valueis");
					System.out.println(session.getAttribute("usermail"));
					UserStatic.userId= (rs.getString("dp_id"));
					System.out.println("UserStatic.userId");
					System.out.println(rs.getString("dp_id"));
					return new ModelAndView("redirect:dassign.html");
					
				}
				
			}
			
			//HttpSession session = request.getSession();
			//User user = (User) session.getAttribute("user");
			if(rs.getRow()==0)
			{
					System.out.println("not valid");
					return new ModelAndView("dlogin","error2","Invalid User Credintials");
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			msg="Error occure<br>"+e.getMessage();
			e.printStackTrace();
			return new ModelAndView("dlogin","error2","Invalid User Credintials");
		}
		
		
		return new ModelAndView("dlogin","error2","Invalid User Credintials");
	}
	
	@RequestMapping(value = "/deliverfinish", method = RequestMethod.POST)
	public ModelAndView save6(@ModelAttribute("user") UserBean user,HttpSession session ) {
	
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
		PreparedStatement pre;
	
		pre = con.prepareStatement("UPDATE `deliverydetails` SET `date`=?,`delivery_remark`=?,`delivery_status`='delivered',`dp_id`=? WHERE `delivery_id`=?");
		
		pre.setString(1,user.getDate());
		pre.setString(2,user.getDelremark());
		pre.setString(3,UserStatic.userId );
		pre.setInt(4, user.getDelivery_id());
		
		pre.executeUpdate();
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		

		return new ModelAndView("redirect:dassign.html");// will redirect to viewemp
														// request mapping
}
	@RequestMapping(value = "/ddell", method = RequestMethod.GET)
	public ModelAndView Delete(@RequestAttribute("id") String id,HttpSession session) {
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
		PreparedStatement pre;
		PreparedStatement pre1;
		pre = con.prepareStatement("delete from deliveryperson where login_id = ?");
		pre.setString(1,id);
		pre.executeUpdate();
		pre1 = con.prepareStatement("delete from login where login_id = ?");
		pre1.setString(1,id);
		pre1.executeUpdate();
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		

		return new ModelAndView("redirect:viewdeliverypersion.html");// will redirect to viewemp
														// request mapping
		}
		


	
	
}
