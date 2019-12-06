package com.snt.Springboard.domain;

public class BoardVO {

	private int board_id;
	private String board_title;
	private String department_name;
	private String employee_name;
	private String board_create_date;
	private String board_name;
	private String search_date1;
	private String search_date2;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
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
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
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
	public String getSearch_date1() {
		return search_date1;
	}
	public void setSearch_date1(String search_date1) {
		this.search_date1 = search_date1;
	}
	public String getSearch_date2() {
		return search_date2;
	}
	public void setSearch_date2(String search_date2) {
		this.search_date2 = search_date2;
	}
	@Override
	public String toString() {
		return "BoardVO [board_id=" + board_id + ", board_title=" + board_title + ", department_name=" + department_name
				+ ", employee_name=" + employee_name + ", board_create_date=" + board_create_date + ", board_name="
				+ board_name + ", search_date1=" + search_date1 + ", search_date2=" + search_date2 + "]";
	}
	
}
