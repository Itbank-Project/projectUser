package com.hotel.calendar;

public class CalendarDTO {
//	이름             널?       유형           
//			-------------- -------- ------------ 
//			CALENDAR_PK    NOT NULL VARCHAR2(50) 
//			CALENDAR_COUNT NOT NULL NUMBER       
//			CALENDAR_PRICE NOT NULL NUMBER       
//			CALENDAR_DATE  NOT NULL DATE         
//			CALENDAR_RO_PK NOT NULL VARCHAR2(50) 

	
	private String calendar_pk, calendar_ro_pk, calendar_date;
	private int calendar_count, calendar_price;
	private String ro_roomtype, ro_limitperson, ro_badtype, ro_description;
	private String ho_check_in, ho_check_out, ro_ho_name, day, ro_uploadfile;

	public String getCalendar_pk() {
		return calendar_pk;
	}
	public void setCalendar_pk(String calendar_pk) {
		this.calendar_pk = calendar_pk;
	}
	public String getCalendar_ro_pk() {
		return calendar_ro_pk;
	}
	public void setCalendar_ro_pk(String calendar_ro_pk) {
		this.calendar_ro_pk = calendar_ro_pk;
	}
	public String getCalendar_date() {
		return calendar_date;
	}
	public void setCalendar_date(String calendar_date) {
		this.calendar_date = calendar_date;
	}
	public int getCalendar_count() {
		return calendar_count;
	}
	public void setCalendar_count(int calendar_count) {
		this.calendar_count = calendar_count;
	}
	public int getCalendar_price() {
		return calendar_price;
	}
	public void setCalendar_price(int calendar_price) {
		this.calendar_price = calendar_price;
	}
	public String getRo_roomtype() {
		return ro_roomtype;
	}
	public void setRo_roomtype(String ro_roomtype) {
		this.ro_roomtype = ro_roomtype;
	}
	public String getRo_limitperson() {
		return ro_limitperson;
	}
	public void setRo_limitperson(String ro_limitperson) {
		this.ro_limitperson = ro_limitperson;
	}
	public String getRo_badtype() {
		return ro_badtype;
	}
	public void setRo_badtype(String ro_badtype) {
		this.ro_badtype = ro_badtype;
	}
	public String getRo_description() {
		return ro_description;
	}
	public void setRo_description(String ro_description) {
		this.ro_description = ro_description;
	}
	public String getHo_check_in() {
		return ho_check_in;
	}
	public void setHo_check_in(String ho_check_in) {
		this.ho_check_in = ho_check_in;
	}
	public String getHo_check_out() {
		return ho_check_out;
	}
	public void setHo_check_out(String ho_check_out) {
		this.ho_check_out = ho_check_out;
	}
	public String getRo_ho_name() {
		return ro_ho_name;
	}
	public void setRo_ho_name(String ro_ho_name) {
		this.ro_ho_name = ro_ho_name;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getRo_uploadfile() {
		return ro_uploadfile;
	}
	public void setRo_uploadfile(String ro_uploadfile) {
		this.ro_uploadfile = ro_uploadfile;
	}


}
