package com.example.ecom;

import java.sql.Date;

import org.springframework.stereotype.Service;



@Service
public class ProductDAOClass implements ProductDAO {

	@Override
	public int getProduct(Product p) {
		
		int id=p.getPid();
		int pricecurrent=p.getPricecurrent();
		int pricehigh=p.getPricehigh();
		Date ldate=p.getLowdate();
		Date hdate=p.getHighdate();
		int pricelow=p.getPricelow();
		return 0;
		
	}

}
