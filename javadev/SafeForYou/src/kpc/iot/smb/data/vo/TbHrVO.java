package kpc.iot.smb.data.vo;

import java.io.Serializable;

public class TbHrVO implements Serializable {
	private static final long serialVersionUID = 1L;
	int hr_id;
	String id;
	String pw;
	String name;
	int location_id;
	String tel;
	String email;
	char sex;
	String birthday;
	char level;
	String fcm;

	public int getHr_id() {
		return hr_id;
	}

	public void setHr_id(int hr_id) {
		this.hr_id = hr_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLocation_id() {
		return location_id;
	}

	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public char getLevel() {
		return level;
	}

	public void setLevel(char level) {
		this.level = level;
	}

	public String getFcm() {
		return fcm;
	}

	public void setFcm(String fcm) {
		this.fcm = fcm;
	}

}
