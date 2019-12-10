package com.snt.Springboard.domain;

public class BoardVO {

	private String board_id;
	private String department_id;
	private String employee_id;
	
	private String board_title;
	private String department_name;
	private String board_create_date;
	private String board_name;
	private String employee_name;
	private String board_content;
	private String hidden_date;
	
	public String getHidden_date() {
		return hidden_date;
	}
	public void setHidden_date(String hidden_date) {
		this.hidden_date = hidden_date;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getBoard_create_date() {
		return board_create_date;
	}
	public void setBoard_create_date(String board_create_date) {
		this.board_create_date = board_create_date;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getBoard_id() {
		return board_id;
	}
	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	
	
}
