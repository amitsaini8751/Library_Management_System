package com.Controller.Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class ReadAdmissionImp extends ReadAdmission{
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	
	
	public ReadAdmission ReadOne(String Registration_Number)
	{
		ReadAdmission al;
		String sql="select * from student_record where Registration_Number=?";
		
		try {
		 al=JdbcTemplate.queryForObject(sql,new ReadAllRowMapper(),Registration_Number);
		}
		catch(Exception e)
		{
			al=null;
		}
		
		return al;
		
	}
	
	
	public List<LibraryStudentRecord> ReadDetail(String Registration_Number)
	{
	   List<LibraryStudentRecord>	 al1;
		String sql="select * from library_student_record where Registration_Number=?";
		
		try {
		 al1=JdbcTemplate.query(sql,new LibraryStudentRecordRowMappe(),Registration_Number);
		}
		catch(Exception e)
		{
			al1=null;
		}
		
		return al1;
		
	}
   
   
	

}
