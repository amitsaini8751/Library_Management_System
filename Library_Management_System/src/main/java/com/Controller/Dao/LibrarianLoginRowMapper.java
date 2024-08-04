package com.Controller.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LibrarianLoginRowMapper implements RowMapper<LibrarianLogin>{

	@Override
	public LibrarianLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		LibrarianLogin alog=new LibrarianLogin();
		alog.setLibrarianUserName(rs.getString(1));
		alog.setLibrarianUserPassword(rs.getString(2));
		return alog;
	}

}
