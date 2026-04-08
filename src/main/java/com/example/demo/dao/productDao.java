package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.bean.product;
@Repository
public interface productDao extends CrudRepository<product, Integer>{

}
