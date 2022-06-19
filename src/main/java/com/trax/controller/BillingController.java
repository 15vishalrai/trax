package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Billing;
import com.trax.entities.contact;
import com.trax.services.BillingService;
import com.trax.services.ContactService;

@Controller
public class BillingController {
	
	@Autowired ContactService contactService;
	
	@Autowired BillingService billingservice;
	
	@RequestMapping("/createBill")
	public String createBill(@RequestParam("bId") long id,ModelMap model) {
		contact contact = contactService.findcontactById(id);
		model.addAttribute("contact", contact);
		return"createBill";
	}
	@RequestMapping("/saveBill")
	public String saveBill(@ModelAttribute("bill") Billing bill) {
		billingservice.saveBill(bill);
		
		return "createBill";
	}
	@RequestMapping("/listAllBills")
	public String listAllBills(ModelMap model) {
		List<Billing> bills = billingservice.getAllBills();
		model.addAttribute("bills",bills);
		return "billing_search_result";
	}

}
