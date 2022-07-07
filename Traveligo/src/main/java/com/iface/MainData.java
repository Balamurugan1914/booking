package com.iface;

import java.util.List;

public interface MainData<T> {
	
	public T add(T t);
	public List<T> findAll();
	public T addbook(T t);
	public T findbyname(String username);
	
	

}
