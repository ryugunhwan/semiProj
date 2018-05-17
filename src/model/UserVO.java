package model;

public class UserVO {
	int userId, upoint;
	String uname, upw, uaddress, uphone;

	public UserVO() {
		// TODO Auto-generated constructor stub
	}

	public UserVO(int userId, int upoint, String uname, String upw, String uaddress, String uphone) {
		this.userId = userId;
		this.upoint = upoint;
		this.uname = uname;
		this.upw = upw;
		this.uaddress = uaddress;
		this.uphone = uphone;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getUpoint() {
		return upoint;
	}

	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

}
