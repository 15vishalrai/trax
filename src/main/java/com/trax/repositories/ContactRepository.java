package com.trax.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.trax.entities.contact;



public interface ContactRepository  extends JpaRepository<contact,Long>{

}
