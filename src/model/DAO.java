package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import sangeun.reservation;

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

	// dao 하나에 vo 여러개?

	
	public EngineerVO reserEngi(int gid) {
		try {
			System.out.println("userReser진입");

			sql = "select * from engineer where gid = ?";
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, gid);
			
			rs = ptmt.executeQuery();
			if(rs.next()) {
				EngineerVO vo = new EngineerVO();
				vo.setGid(gid);
				vo.setePhone(rs.getString("ephone"));
				vo.setEpicture(rs.getString("epicture"));
				vo.setEname(rs.getString("ename"));
				return vo;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			
		}

			return null;
		
	}
	
	public ArrayList<ReserVO> userReser(int uid) {
		ArrayList<ReserVO> list = new ArrayList<>();
		
		try {
			System.out.println("userReser진입");

			sql = "select * from reser where userid = ?";
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, uid);
			
			rs = ptmt.executeQuery();
			while(rs.next()) {
				ReserVO vo = new ReserVO();
				vo.setNum(rs.getInt("num"));
				vo.setGid(rs.getInt("gid"));
				vo.setPart1(rs.getInt("part1"));
				vo.setPart2(rs.getInt("part2"));
				vo.setPart3(rs.getInt("part3"));
				vo.setUser_id(uid);
				vo.setResDate(rs.getDate("resDate"));
				list.add(vo);
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			
		}

			return list;
	}
	
	/* 날짜넣고 예약정보 불러오기 */
	public ArrayList<ReserVO> dayPart(java.util.Date resdate) {
		ArrayList<ReserVO> list = new ArrayList<>();

		try {
			System.out.println("안들어가냐");

			String dd = new SimpleDateFormat("yyyy-M-d").format(resdate);
			sql = "select * from reser where resdate = '" + dd + "'";
			ptmt = con.prepareStatement(sql);

			// Date date = new Date(2018-1900, 5-1, 16);

			// ptmt.setDate(1, new
			// Date(resdate.getYear(),resdate.getMonth()-1,resdate.getDate()));

			// System.out.println("select * from reser where resdate = "+new
			// SimpleDateFormat("yyyy-M-d").format(resdate));
			System.out.println(sql);
			rs = ptmt.executeQuery();

			System.out.println("DAO_dayPart rs검사");
			while (rs.next()) {
				System.out.println("DAO_dayPart rs있음");
				ReserVO vo = new ReserVO();

				vo.setGid(rs.getInt("gid"));
				vo.setPart1(rs.getInt("part1"));
				vo.setPart2(rs.getInt("part2"));
				vo.setPart3(rs.getInt("part3"));
				System.out.println(vo);
				list.add(vo);
			}
			return list;
		} catch (Exception e) {
//			e.printStackTrace();
			// TODO: handle exception
		} finally {
			// close();
		}

		return null;
	}

	/* 카테고리 리스트 불러오기 */
	public Map<String, String> cateList() {
		Map<String, String> map = new HashMap<String, String>();
		try {
			sql = "select * from categori";
			ptmt = con.prepareStatement(sql);

			rs = ptmt.executeQuery();
			while (rs.next()) {
				map.put(rs.getString("cate"), rs.getString("rang"));
			}
			return map;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
		}
		return null;
	}

	
	
	/* 예약vo 넣으면 예약에 대한 모든정보 받아올거 */
	public void reserDetail(ReserVO vo) {
		UserVO user = findUser(vo.user_id);
		try {
			sql = "";
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, 1);
			ptmt.setString(1, "");
			ptmt.executeQuery();
		} catch (Exception e) {
		} finally {

		}
	}

	/* 예약정보 넣으면 유저정보 받아올거 */
	public UserVO findUser(int reserid) {
		try {
			sql = "select user.* ";
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, 1);
			ptmt.setString(1, "");
			ptmt.executeQuery();

			return new UserVO();
		} catch (Exception e) {
		} finally {

		}
		return null;
	}

	/* 예약정보에서 파트1 스케줄 추가 */
	/*public void setPart1(ReserVO vo) {
		try {
			System.out.print(vo);

			sql = "update reser set part1=1 where gid=? and resdate=?";
			ptmt = con.prepareStatement(sql);

			ptmt.setInt(1, vo.getGid());
			ptmt.setDate(2, vo.getResDate());
			ptmt.executeUpdate();
			System.out.println("execute");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println();
		}

	}*/

	/*
	 * try { sql=""; ptmt = con.prepareStatement(sql); ptmt.setInt(1, 1);
	 * ptmt.setString(1, ""); ptmt.executeQuery(); }catch (Exception e) { // TODO:
	 * handle exception }finally {
	 * 
	 * }
	 */

	public void close() {
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
			}
		if (ptmt != null)
			try {
				ptmt.close();
			} catch (SQLException e) {
			}
		if (con != null)
			try {
				con.close();
			} catch (SQLException e) {
			}
	}
}
