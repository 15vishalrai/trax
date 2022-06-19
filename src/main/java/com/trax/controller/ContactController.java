package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Lead;
import com.trax.entities.contact;
import com.trax.services.ContactService;
import com.trax.services.LeadService;

@Controller
public class ContactController {
	
	@Autowired
	private LeadService leadService;
	
	@Autowired 
	private ContactService contactservice;
	
	
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id,ModelMap model) {
		Lead lead=leadService.findLeadById(id);
		contact contact=new contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setLeadSource(lead.getLeadSource());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		
		//Here we have copied lead data to contact table after creating object
		
		contactservice.saveContact(contact);  //saving lead contact 		
		leadService.deleteLeadById(id);	// Deleting lead contact from lead table 
		
		List<contact> contacts = contactservice.getAllContact();
		model.addAttribute("contacts",contacts);
		
		
		return "contact_search_result";
	}
	
	@RequestMapping("/contactInfo")
	public String leadInfo(@RequestParam("id") long id,ModelMap model) {
		contact contact = contactservice.findcontactById(id);
		model.addAttribute("contact",contact);
		return"contact_info";
	}
		
		@RequestMapping("listallcontacts")
		public String listallcontacts(ModelMap model) {
		List<contact> contacts = contactservice.getAllContact();
		model.addAttribute("contacts",contacts);
		return "contact_search_result";
		}

}
