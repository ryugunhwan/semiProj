package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {

	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;

	public DAO() {

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/oooo");

			con = ds.getConnection();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//dao 하나에 모든 테이블? vo는 테이블당 하나씩 받고?

	//멤버 셀렉트 인서트 딜리트 업데이트
	
	//기사 셀렉트
	
	//예약 셀렉트 인서트 딜리트
	
	//제품 셀렉트 인서트 딜리트 업데이트
	
	public void close() {
		if(rs!=null) try {rs.close();} catch (SQLException e) {}
		if(ptmt!=null) try {ptmt.close();} catch (SQLException e) {}
		if(con!=null) try {con.close();} catch (SQLException e) {}
	}
}
