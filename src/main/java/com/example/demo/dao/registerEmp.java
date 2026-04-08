package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.bean.RegisterEmp;
@Repository

public interface registerEmp extends CrudRepository<RegisterEmp, Integer>{

}
