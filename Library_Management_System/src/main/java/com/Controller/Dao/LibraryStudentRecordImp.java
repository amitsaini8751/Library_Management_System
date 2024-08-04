package com.Controller.Dao;

import java.util.Date;

import org.springframework.jdbc.core.JdbcTemplate;

public class LibraryStudentRecordImp extends LibraryStudentRecord{
	
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	String result;
	public String StudentAddBook(String regNumber,String book_id,String book_name,String book_subject,String book_year)
	{
		try {
		String sql="insert into library_student_record values(?,?,?,?,?,?)";
		 Date date = new Date(); 
		int row=JdbcTemplate.update(sql,regNumber,book_id,book_name,book_subject,book_year,date);
		if(row==1)
		{
			result="success";
		}
		else
		{
			result="failed";
		}
		}
		catch(Exception e)
		{
			result="failed";
		}
		
		
		return result;
	}
	
	
	
	public String StudentDeleteBook(String book_id)
	{
		try {
		String sql="delete from library_student_record where book_id=?";
		 Date date = new Date(); 
		int row=JdbcTemplate.update(sql,book_id);
		if(row==1)
		{
			result="success";
		}
		else
		{
			result="failed";
		}
		}
		catch(Exception e)
		{
			result="failed";
		}
		
		
		return result;
	}
	

}
