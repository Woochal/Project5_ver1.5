package com.example.bean;

import java.util.Date;

public class BoardVO {
	private int assignNum;
	private int assignLevel;
	private String assignName;
	private String className;
	private String createDate;
	private String dueDate;
	private boolean teamAssign;
	private boolean complete;




	public int getAssignNum() {
		return assignNum;
	}
	public void setAssignNum(int assignNum) {
		this.assignNum = assignNum;
	}
	public int getAssignLevel() {
		return assignLevel;
	}

	public void setAssignLevel(int assignLevel) {
		this.assignLevel = assignLevel;
	}
	public String getAssignName() {
		return assignName;
	}
	public void setAssignName(String assignName) {
		this.assignName = assignName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public boolean getTeamAssign() {
		return teamAssign;
	}
	public void setTeamAssign(boolean teamAssign) {
		this.teamAssign = teamAssign;
	}
	public boolean getComplete() {
		return complete;
	}
	public void setComplete(boolean complete) {
		this.complete = complete;
	}
}
