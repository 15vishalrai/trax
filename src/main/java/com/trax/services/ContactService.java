package com.trax.services;

import java.util.List;

import com.trax.entities.contact;

public interface ContactService {
	
	public void saveContact(contact contact);
	public List<contact> getAllContact();
	public contact findcontactById(long id);
	

}
