package com.Controller.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LibraryStudentRecordRowMappe implements RowMapper<LibraryStudentRecord> {

	@Override
	public LibraryStudentRecord mapRow(ResultSet rs, int rowNum) throws SQLException {
		LibraryStudentRecord sr=new LibraryStudentRecord();
		sr.setRegNumber(rs.getString(1));
		sr.setBookId(rs.getString(2));
		sr.setBookName(rs.getString(3));
		sr.setBookSubject(rs.getString(4));
		sr.setBookYear(rs.getString(5));
		sr.setIssueddate(rs.getString(6));
		return sr;
	}

		
		

	
	

}
