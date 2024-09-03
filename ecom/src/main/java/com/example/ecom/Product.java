package com.example.ecom;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="products")
public class Product {
	
	@Id
	@Column(name="id")
	int pid;
	
	
	@Column(name="pricelow")
	int pricelow;
	
	@Column(name="pricehigh")
	int pricehigh;
	
	@Column(name="pricecurrent")
	int pricecurrent;
	
	@Column(name="lowdate")
	Date lowdate;
	
	@Column(name="highdate")
	Date highdate;

	public Product(int pid, int pricelow, int pricehigh, int pricecurrent, Date lowdate, Date highdate) {
		super();
		this.pid = pid;
		this.pricelow = pricelow;
		this.pricehigh = pricehigh;
		this.pricecurrent = pricecurrent;
		this.lowdate = lowdate;
		this.highdate = highdate;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getPricelow() {
		return pricelow;
	}

	public void setPricelow(int pricelow) {
		this.pricelow = pricelow;
	}

	public int getPricehigh() {
		return pricehigh;
	}

	public void setPricehigh(int pricehigh) {
		this.pricehigh = pricehigh;
	}

	public int getPricecurrent() {
		return pricecurrent;
	}

	public void setPricecurrent(int pricecurrent) {
		this.pricecurrent = pricecurrent;
	}

	public Date getLowdate() {
		return lowdate;
	}

	public void setLowdate(Date lowdate) {
		this.lowdate = lowdate;
	}

	public Date getHighdate() {
		return highdate;
	}

	public void setHighdate(Date highdate) {
		this.highdate = highdate;
	}
	

	
	
}
