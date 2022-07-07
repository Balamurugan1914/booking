package com.traveldata;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


import com.iface.MainData;
import com.model.Details;

public class TravelData implements MainData<Details> {
	List<Details> travellist;
	private Connection con = null;
	Details detail= null;

	public TravelData(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public Details add(Details t) {

		String insert = "insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)";

		int rowAdded = 0;

		try {

			PreparedStatement ps = con.prepareStatement(insert);
			ps.setString(1, t.getName());
			ps.setString(2, t.getUsername());
			ps.setString(3, t.getPassword());
			ps.setString(4, t.getConfirmpassword());
			ps.setInt(5, t.getAge());
			ps.setString(6, t.getGender());
			ps.setString(7, t.getMailid());
			ps.setString(8, t.getContact());

			rowAdded = ps.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
		}

		return rowAdded == 1 ? t : null;

	}

	/*
	 * Optional <Details> found=this.travellist.stream().filter(e ->
	 * e.getCustomerName().equals(customerName)).findFirst(); return (Customer)
	 * found.get();
	 */
	@Override
	public List<Details> findAll() {
		

		String url = "select * from register; ";

	    travellist = new ArrayList<>();

		try {

			PreparedStatement ps = con.prepareStatement(url);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				String name = rs.getString("name");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String confirmpassword = rs.getString("confirmpassword");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				String mailid = rs.getString("mailid");
				String contact = rs.getString("contact");

				Details detail = new Details(name, username, password, confirmpassword, age, gender, mailid, contact,null,null,null,null);
				travellist.add(detail);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return travellist;

	}

	@Override
	public Details addbook(Details contact) {
		
		String add = "insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)";

		int rowAdded = 0;

		try {

			PreparedStatement ps = con.prepareStatement(add);
			ps.setString(1, contact.getName());
			ps.setString(2, contact.getUsername());
			ps.setString(3, contact.getPassword());
			ps.setString(4, contact.getConfirmpassword());
			ps.setInt(5, contact.getAge());
			ps.setString(6, contact.getGender());
			ps.setString(7, contact.getMailid());
			ps.setString(8, contact.getContact());
			ps.setString(9, contact.getSources());
			ps.setString(10, contact.getDestination());
			ps.setString(11, contact.getDate());
			ps.setString(12, contact.getTime());

			rowAdded = ps.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
		}

		return rowAdded == 1 ? contact : null;

		
		
	}

	@Override
	public Details findbyname(String username) {
		
		String url = "select * from register where username = ?; ";

	   

		try {

			PreparedStatement ps = con.prepareStatement(url);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				String name = rs.getString("name");
				String username1 = rs.getString("username");
				String password = rs.getString("password");
				String confirmpassword = rs.getString("confirmpassword");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				String mailid = rs.getString("mailid");
				String contact = rs.getString("contact");

				this. detail = new Details(name, username1, password, confirmpassword, age, gender, mailid, contact,null,null,null,null);
				//travellist.add(detail);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return detail;

	}

}
