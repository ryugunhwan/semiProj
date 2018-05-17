package model;

import java.sql.Date;
//import java.sql.Date;
public class ReserVO {
	int num, user_id, gid;
	Date resDate;
	int part1, part2, part3;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public int getPart1() {
		return part1;
	}
	public void setPart1(int part1) {
		this.part1 = part1;
	}
	public int getPart2() {
		return part2;
	}
	public void setPart2(int part2) {
		this.part2 = part2;
	}
	public int getPart3() {
		return part3;
	}
	public void setPart3(int part3) {
		this.part3 = part3;
	}
	@Override
	public String toString() {
		return "ReserVO [num=" + num + ", user_id=" + user_id + ", gid=" + gid + ", resDate=" + resDate + ", part1="
				+ part1 + ", part2=" + part2 + ", part3=" + part3 + "]";
	}
	
	
}
