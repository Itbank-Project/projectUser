package com.hotel.reservation;

public class ReservationDTO {

//	이름               널?       유형           
//	---------------- -------- ------------ 
//	RE_IDX           NOT NULL NUMBER       
//	RE_PAYDATE       NOT NULL DATE         
//	RE_INDATE        NOT NULL DATE         
//	RE_OUTDATE       NOT NULL DATE         
//	RE_DAYCOUNT      NOT NULL NUMBER       
//	RE_PAYMENT       NOT NULL NUMBER       
//	RE_CU_ID         NOT NULL VARCHAR2(50) 
//	RE_CHANGENAME             VARCHAR2(50) 
//	RE_CHANGEPNUM             VARCHAR2(50) 
//	RE_CANCELYESORNO NOT NULL VARCHAR2(20) 
//	RE_CANCELDATE             DATE  
// 	RE_CALENDAR_PK	 NOT NULL VARCHAR2(50)
//	RE_RO_pk         NOT NULL VARCHAR2(20)       


	private int re_idx, re_daycount, re_payment;
	private String re_paydate, re_indate, re_outdate;
	private String re_cu_id, re_changename, re_changepnum;
	private String re_cancelYesOrNo, re_canceldate;
	private String re_calendar_pk; 

	// 예약내역 불러올 때 같이 불러올 목록
	private String ho_name, cu_name, cu_pnum, ad_email, ad_id, ad_name, ro_roomType;
	
	// 하루 전 취소 못하게 하기
	private int canTime;

	public int getCanTime() {
		return canTime;
	}

	public void setCanTime(int canTime) {
		this.canTime = canTime;
	}
	
	public int getRe_idx() {
		return re_idx;
	}

	public void setRe_idx(int re_idx) {
		this.re_idx = re_idx;
	}

	public int getRe_daycount() {
		return re_daycount;
	}

	public void setRe_daycount(int re_daycount) {
		this.re_daycount = re_daycount;
	}

	public int getRe_payment() {
		return re_payment;
	}

	public void setRe_payment(int re_payment) {
		this.re_payment = re_payment;
	}

	public String getRe_paydate() {
		return re_paydate;
	}

	public void setRe_paydate(String re_paydate) {
		this.re_paydate = re_paydate;
	}

	public String getRe_indate() {
		return re_indate;
	}

	public void setRe_indate(String re_indate) {
		this.re_indate = re_indate;
	}

	public String getRe_outdate() {
		return re_outdate;
	}

	public void setRe_outdate(String re_outdate) {
		this.re_outdate = re_outdate;
	}

	public String getRe_cu_id() {
		return re_cu_id;
	}

	public void setRe_cu_id(String re_cu_id) {
		this.re_cu_id = re_cu_id;
	}

	public String getRe_changename() {
		return re_changename;
	}

	public void setRe_changename(String re_changename) {
		this.re_changename = re_changename;
	}

	public String getRe_changepnum() {
		return re_changepnum;
	}

	public void setRe_changepnum(String re_changepnum) {
		this.re_changepnum = re_changepnum;
	}

	public String getRe_cancelYesOrNo() {
		return re_cancelYesOrNo;
	}

	public void setRe_cancelYesOrNo(String re_cancelYesOrNo) {
		this.re_cancelYesOrNo = re_cancelYesOrNo;
	}

	public String getRe_canceldate() {
		return re_canceldate;
	}

	public void setRe_canceldate(String re_canceldate) {
		this.re_canceldate = re_canceldate;
	}

	public String getHo_name() {
		return ho_name;
	}

	public void setHo_name(String ho_name) {
		this.ho_name = ho_name;
	}

	public String getCu_name() {
		return cu_name;
	}

	public void setCu_name(String cu_name) {
		this.cu_name = cu_name;
	}

	public String getCu_pnum() {
		return cu_pnum;
	}

	public void setCu_pnum(String cu_pnum) {
		this.cu_pnum = cu_pnum;
	}

	public String getAd_email() {
		return ad_email;
	}

	public void setAd_email(String ad_email) {
		this.ad_email = ad_email;
	}

	public String getAd_id() {
		return ad_id;
	}

	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}

	public String getAd_name() {
		return ad_name;
	}

	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}

	public String getRo_roomType() {
		return ro_roomType;
	}

	public void setRo_roomType(String ro_roomType) {
		this.ro_roomType = ro_roomType;
	}

	public String getRe_calendar_pk() {
		return re_calendar_pk;
	}

	public void setRe_calendar_pk(String re_calendar_pk) {
		this.re_calendar_pk = re_calendar_pk;
	}
}
