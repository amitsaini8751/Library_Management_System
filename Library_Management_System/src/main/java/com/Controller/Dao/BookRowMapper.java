package com.Controller.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BookRowMapper implements RowMapper<Book>{

	@Override
	public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
		Book b=new Book();
		b.setBook_id(rs.getString(1));
		b.setBook_name(rs.getString(2));
		b.setBook_subject(rs.getString(3));
		b.setBook_year(rs.getString(4));
		return b;
	}

}
