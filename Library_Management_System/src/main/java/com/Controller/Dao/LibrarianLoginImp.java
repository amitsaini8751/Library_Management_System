package com.Controller.Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class LibrarianLoginImp extends LibrarianLogin {
	
	JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	String result="Failed";
	List<LibrarianLogin> al;
	public String check(String username,String password)
	{
		String sql="select * from librarian_login where username=?";
		
		
		  al=JdbcTemplate.query(sql,new LibrarianLoginRowMapper() ,username);
		
		if(al!=null) 
		{
			for(LibrarianLogin adl:al)
			{
			
			if(adl.getLibrarianUserPassword().equals(password))
			{
				result="Exists";
			}
			else {
			result="wrongpass";
			}
			}	
		}
		
		return result;
		
	}
   

}
