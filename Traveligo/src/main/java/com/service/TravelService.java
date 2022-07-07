package com.service;

import java.sql.Connection;
import java.util.List;

import com.iface.MainData;
import com.model.Details;
import com.traveldata.TravelData;

public class TravelService {
	
	
	private MainData<Details> repo;
	private Connection con;
	public TravelService(Connection con) {
		super();
		this.con = con;
		this.repo = new TravelData(con);
	}
	
	
	public Details add(Details entry) {
		
		
		return this.repo.add(entry);
		
	}
	
public List<Details> viewDetails() {
		
		
		return this.repo.findAll();
		
	}

public Details addbooking (Details entities) {
	
	
	return this.repo.addbook(entities);
	
}

public Details finbyname(String name) {
	
	return this.repo.findbyname(name);
	
}
	
	
	
	

}
