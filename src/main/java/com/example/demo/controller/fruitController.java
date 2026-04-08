package com.example.demo.controller;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.bean.contactBean;
import com.example.demo.bean.orderBean;
import com.example.demo.bean.product;
import com.example.demo.bean.registerBean;
import com.example.demo.dao.cartItemDao;
import com.example.demo.bean.cartbean;
import com.example.demo.dao.contactDao;
import com.example.demo.dao.orderDao;
import com.example.demo.dao.productDao;
import com.example.demo.dao.registerDao;
import com.example.demo.bean.cartitem;
import jakarta.servlet.http.HttpSession;


@Controller
public class fruitController {
	
	@RequestMapping("/paymentsuccess")
	public String paymentSuccess() {
		return "paymentsuccess";
	}
	
	@RequestMapping("/header")
	public String header() {
		return "header";
	}
	
	@RequestMapping("/adminindex")
	public String admin() {
		return "adminindex";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/about")
	public String about(){
		return "about";
	}
	
	@RequestMapping("/checkout")
	public String checkout(){
		return "checkout";
	}
	
	@RequestMapping("/news")
	public String news(){
		return "news";
	}
	
	@RequestMapping("/singlenews")
	public String singlenews(){
		return "singlenews";
	}
	@RequestMapping("/singleproduct")
	public String singleproduct(){
		return "singleproduct";
	}
	
	@RequestMapping("/login")
	public String login(String email,String password,HttpSession session) {
		for(registerBean r1:rd.findAll()) {
			if(r1.getEmail().equals(email) && r1.getPassword().equals(password)) {
				session.setAttribute("getname", r1);
				return "index";
			}
		}
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@Autowired
	registerDao rd;
	
	@RequestMapping("/insert")
	public String insert(registerBean r) {
		rd.save(r);
		return "login";
	}
	
	@RequestMapping("/showRegisterData")
	public String showdata(HttpSession session) {
		ArrayList<registerBean> list=(ArrayList<registerBean>) rd.findAll();
		session.setAttribute("getdata", list);
		return "showRegisterData";
	}
	
	@RequestMapping("/update")
	public String update(int id,registerBean r,HttpSession session) {
		Optional<registerBean> op = rd.findById(r.getId());
		r=op.get();
		session.setAttribute("updateData", r);
		return "update";
	}
	@RequestMapping("/updateData")
	public String updateData(registerBean r) {
		rd.save(r);
		return "redirect:showRegisterData";
	}
	
	@RequestMapping("/delete")
	public String delete(int id) {
		rd.deleteById(id);
		return "redirect:showRegisterData";
	}
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact";
		
	}
	
	@RequestMapping("/showcontact")
	public String viewContact(HttpSession session) {
		ArrayList<contactBean> list=(ArrayList<contactBean>) cd.findAll();
		session.setAttribute("getContactData", list);
		return "showcontact";
	}
	
	@Autowired
	contactDao cd;
	
	@RequestMapping("/insertcontact")
	public String insertcontact(contactBean c) {
		cd.save(c);
		return "index";
		
	}
	
	
	
	
	
	
	@RequestMapping("/addproduct")
	public String addproduct() {
		return "addproduct";
		
	}
	
	@Autowired
	productDao pd;
	
	@RequestMapping("/insertproduct")
	public String insertproduct(product p) {
		pd.save(p);
		return "addproduct";
		
	}
	
	@RequestMapping("/shop")
	public String showProduct(HttpSession session) {
		ArrayList<product> list=(ArrayList<product>) pd.findAll();
		session.setAttribute("getproduct", list);
		return "shop";
		
	}

	
	@Autowired
	cartItemDao cid;
	
	@RequestMapping("/cart")
	public String cartitem(cartitem c) {
		

		for(cartitem cs:cid.findAll()){
			
			if(cs.getProductId()==c.getProductId() && c.getUserId()==cs.getUserId()) {
				
				Optional<cartitem> item=cid.findById(cs.getId());
				c=item.get();
				
				c.setQuantity(cs.getQuantity()+1);
				cid.save(c);
				return "redirect:/showCart";
			}
		}
		c.setQuantity(1);
		cid.save(c);
				
		return "redirect:/showCart";
		
	}
	
	
	@RequestMapping("/showCart")
	public String cartbean(HttpSession session, cartbean c) {
	    registerBean r = (registerBean) session.getAttribute("getname");
	    
	    ArrayList<cartbean> list = new ArrayList<>();

	    for (cartitem c1 : cid.findAll()) {
	        if (c1.getUserId() == r.getId()) {   // ✅ userId ने check कर

	            Optional<product> op = pd.findById(c1.getProductId());
	            if (op.isPresent()) {
	                product p = op.get();

	                c = new cartbean();
	                c.setId(c1.getId());
	                c.setImage(p.getImage());
	                c.setName(p.getName());
	                c.setPrice(p.getPrice());
	                c.setQuantity(c1.getQuantity());

	                list.add(c);   // ✅ आता योग्य जागी आलं
	            }
	        }
	    }

	    for (cartbean cart : list) {
	        /* System.out.println("name: " + cart.getName()); */
	    }

	    session.setAttribute("cartData", list);
	    return "cart";
	}

	
	@RequestMapping("/orderform")
	public String orderform() {
		return "orderform";
	}
	
	
	@Autowired
	orderDao od;
	
	@RequestMapping("/order")
	public String order(orderBean o,HttpSession session) {
		registerBean r =(registerBean)session.getAttribute("getname");
		for(cartitem c:cid.findAll()) {
			if(r.getId()==c.getUserId()) {
				orderBean order = new orderBean();
				System.out.println(c.getQuantity());
				order.setQuantity(c.getQuantity());
				order.setUserId(c.getUserId());
				order.setProductId(c.getProductId());
				order.setAddress(o.getAddress());
				order.setName(o.getName());
				order.setMobilenumber(o.getMobilenumber());
				
				od.save(order);
				cid.deleteById(c.getId());
			}
		}
		
		return "success";
		
	}
	
	
	
	@RequestMapping("/showOrder")
	public String show(HttpSession session) {
		ArrayList<orderBean> list=(ArrayList<orderBean>) od.findAll();
		session.setAttribute("orderData", list);
		return "showOrder";
		
	}
	
	@RequestMapping("/removeFromCart")
	public String removeFromCart(int id, HttpSession session) {
		
		cid.deleteById(id);
		return null;
		
	}
	
	@Autowired
	private com.example.demo.service.PaymentService paymentService;

	// create Razorpay order
	@RequestMapping("/createRazorpayOrder")
	
	@ResponseBody
	public String createRazorpayOrder(double amount) {
	    try {
	        String orderData = paymentService.createOrder(amount);
	        return orderData; // JSON return होईल
	    } catch (Exception e) {
	        return "{\"error\":\"" + e.getMessage() + "\"}";
	    }
	}

	

	
}
