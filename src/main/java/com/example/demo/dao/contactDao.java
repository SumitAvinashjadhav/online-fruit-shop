package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.bean.contactBean;
@Repository

public interface contactDao extends CrudRepository<contactBean, Integer>{

}
