package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bean.EmployeeContact;
import com.example.demo.bean.Employeeproduct;
import com.example.demo.bean.RegisterEmp;
import com.example.demo.dao.EmployeeContactDao;
import com.example.demo.dao.EmployeeProductDao;
import com.example.demo.dao.registerEmp;
import com.mysql.cj.Session;

import jakarta.servlet.http.HttpSession;

@Controller
public class practiceController {
	
	@RequestMapping("/home")
	public String homepage() {
		return "home";
		
	}
	
	@RequestMapping("/registerEmp")
	public String registerEmp() {
		return "registerEmp";
	}
	
	@Autowired	
	registerEmp re;
	
	@RequestMapping("/addvalue")
	public String insertvalues(RegisterEmp r) {
		re.save(r);
		return "home";
	}
	
	@RequestMapping("/ShowRegisterEmp")
	public String showRegister(HttpSession session) {
		ArrayList<RegisterEmp> list=(ArrayList<RegisterEmp>) re.findAll();
		session.setAttribute("getRegisterData", list);
		
		return "ShowRegisterEmp";
		
	}
	
	
	@RequestMapping("/Elogin")
	public String loginpage(String email, String password,HttpSession session) {
		for(RegisterEmp r1:re.findAll()) {
			if(r1.getEmail().equals(email) && r1.getPassword().equals(password)) {
				session.setAttribute("getname", r1);
				return "home";
			}
		}
		return "Elogin";
	}
	
	@RequestMapping("/Econtact")
	public String empcontact() {
		return "Econtact";
	}
	
	@Autowired
	EmployeeContactDao ECD;
	
	@RequestMapping("/addcontact")
	public String addcontact(EmployeeContact EC) {
		ECD.save(EC);
		return "home";
		
	}
	
	@RequestMapping("/ShowContactData")
	public String showcontact(HttpSession session) {
	 	ArrayList<EmployeeContact> list=(ArrayList<EmployeeContact>) ECD.findAll();
	 	session.setAttribute("getcontactdata", list);
		
		return "ShowContactData";
		
	}
	
	@RequestMapping("/addEmpProuct")
	public String addproductform() {
		return "addEmpProuct";
		
	}
	
	@Autowired
	EmployeeProductDao EP;
	
	@RequestMapping("/addpData")
	public String addpData(Employeeproduct e) {
		EP.save(e);
		return "addEmpProuct";
		
	}
	
	
	
	@RequestMapping("/showEmpProduct")
	public String showEmpProduct(HttpSession session) {
		ArrayList<Employeeproduct> list= (ArrayList<Employeeproduct>) EP.findAll();
		session.setAttribute("EmpProductData", list);
		
		return "showEmpProduct";
		
	}
}
