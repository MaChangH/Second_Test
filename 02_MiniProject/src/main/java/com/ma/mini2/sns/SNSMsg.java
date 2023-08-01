package com.ma.mini2.sns;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class SNSMsg {
	private String c_id;
	private String c_photo;
	
	private BigDecimal c_no;
	private String c_txt;
	private Date c_when;
	private String c_color;
	
	private List<SNSReply> c_replys;
	
	public SNSMsg() {
		// TODO Auto-generated constructor stub
	}

	public SNSMsg(String c_id, String c_photo, BigDecimal c_no, String c_txt, Date c_when, String c_color,
			List<SNSReply> c_replys) {
		super();
		this.c_id = c_id;
		this.c_photo = c_photo;
		this.c_no = c_no;
		this.c_txt = c_txt;
		this.c_when = c_when;
		this.c_color = c_color;
		this.c_replys = c_replys;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_photo() {
		return c_photo;
	}

	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}

	public BigDecimal getC_no() {
		return c_no;
	}

	public void setC_no(BigDecimal c_no) {
		this.c_no = c_no;
	}

	public String getC_txt() {
		return c_txt;
	}

	public void setC_txt(String c_txt) {
		this.c_txt = c_txt;
	}

	public Date getC_when() {
		return c_when;
	}

	public void setC_when(Date c_when) {
		this.c_when = c_when;
	}

	public String getC_color() {
		return c_color;
	}

	public void setC_color(String c_color) {
		this.c_color = c_color;
	}

	public List<SNSReply> getC_replys() {
		return c_replys;
	}

	public void setC_replys(List<SNSReply> c_replys) {
		this.c_replys = c_replys;
	}

	
	
	
	
}
