package com.model;

public class Details {
	
	
	private String name;
	private String username;
	private String password;
	private String confirmpassword;
	private int age;
	private String gender;
	private String mailid;
	private String contact;
	private String sources;
	private String destination;
	private String date;
	private String time;
	public Details() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Details(String name, String username, String password, String confirmpassword, int age, String gender,
			String mailid, String contact, String sources, String destination, String date, String time) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.age = age;
		this.gender = gender;
		this.mailid = mailid;
		this.contact = contact;
		this.sources = sources;
		this.destination = destination;
		this.date = date;
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getSources() {
		return sources;
	}
	public void setSources(String sources) {
		this.sources = sources;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Details [name=" + name + ", username=" + username + ", password=" + password + ", confirmpassword="
				+ confirmpassword + ", age=" + age + ", gender=" + gender + ", mailid=" + mailid + ", contact="
				+ contact + ", sources=" + sources + ", destination=" + destination + ", date=" + date + ", time="
				+ time + "]";
	}
	
	

}
