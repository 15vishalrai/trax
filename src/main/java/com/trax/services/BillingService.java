package com.trax.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.trax.entities.Billing;
import com.trax.entities.Lead;

public interface BillingService {
	
	public void saveBill(Billing bill);

	public List<Billing> getAllBills();
	

}
