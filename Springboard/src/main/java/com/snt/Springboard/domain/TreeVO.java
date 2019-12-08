package com.snt.Springboard.domain;

public class TreeVO {

	private String department_name;
	private String employee_name;
	
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
	@Override
	public String toString() {
		return "TreeVO [department_name=" + department_name + ", employee_name=" + employee_name + "]";
	}
	
}
