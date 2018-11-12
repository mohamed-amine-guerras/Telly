package com.telly.dao;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="reserve")
public class Reserve implements Serializable {
	

	private static final long serialVersionUID = 5362437768854142524L;


	@Id
	@Column(name="dateleave")
	private Date dateLeave;
	
	
	@Column(name="datereturn")
	private Date dateReturn;
	
	@Column(name="leavingfrom")
	private String leaveFrom;
	
	@Column(name="goingto")
	private String goingTo;
	
	@ManyToOne
	@JoinColumn(name="username")
	private User user;
	

	
	public User getUser() {
		return user;
	}





	public void setUser(User user) {
		this.user = user;
	}





	public Reserve() {
		this.user = new User();
		
	}

	



	public Reserve(Date dateLeave, Date dateReturn, String leaveFrom, String goingTo, User user) {
		this.dateLeave = dateLeave;
		this.dateReturn = dateReturn;
		this.leaveFrom = leaveFrom;
		this.goingTo = goingTo;
		this.user = user;
	}


	public Date getDateLeave() {
		return dateLeave;
	}





	public void setDateLeave(Date dateLeave) {
		this.dateLeave = dateLeave;
	}





	public Date getDateReturn() {
		return dateReturn;
	}





	public void setDateReturn(Date dateReturn) {
		this.dateReturn = dateReturn;
	}





	public String getLeaveFrom() {
		return leaveFrom;
	}





	public void setLeaveFrom(String leaveFrom) {
		this.leaveFrom = leaveFrom;
	}





	public String getGoingTo() {
		return goingTo;
	}





	public void setGoingTo(String goingTo) {
		this.goingTo = goingTo;
	}





	@Override
	public String toString() {
		return "Bus [dateLeave=" + dateLeave + ", dateReturn=" + dateReturn + ", leaveFrom=" + leaveFrom + ", goingTo="
				+ goingTo + "]";
	}





	



	
	

}
