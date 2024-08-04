package com.Controller.Dao;


import org.springframework.jdbc.core.JdbcTemplate;

public class BookImp extends Book {
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	
	String result;
	Book b;

	public String AddBook(String book_id,String book_name,String book_subject,String book_year)
	{
		try {
		String sql="insert into book_record values(?,?,?,?)";
		int row=JdbcTemplate.update(sql,book_id,book_name,book_subject,book_year);
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
	
	public Book ReadBook(String book_id)
	{
		
		try {
		String sql="select * from book_record where book_id=?";
		 b=JdbcTemplate.queryForObject(sql, new BookRowMapper(),book_id);
		}
		catch(Exception e)
		{
			b=null;
		}
	
		return b;
	}
	
	public String updateBook(String book_id,String book_name,String book_subject,String book_year)
	{
		try {
		String sql="update book_record set book_name=?,book_subject=?,book_year=? where book_id=?";
		int row=JdbcTemplate.update(sql,book_name,book_subject,book_year,book_id);
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

	
	
	public String deleteBook(String book_id)
	{
		try {
		String sql="delete from book_record where book_id=?";
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
	
	
	
	
	public String changepassword(String newpassword)
	{
		try {
		String sql="update librarian_login set password=?";
		int row=JdbcTemplate.update(sql,newpassword);
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
