package com.example.demo.dao;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.bean.cartbean;
import com.example.demo.bean.cartitem;

@Repository
public interface cartItemDao extends CrudRepository<cartitem, Integer>{

	

	
	
}
