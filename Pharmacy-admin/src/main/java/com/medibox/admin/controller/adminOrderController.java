package com.medibox.admin.controller;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medibox.admin.model.OrderStatus;
import com.medibox.admin.service.OrderMasterService;
import com.medibox.admin.service.OrderStatusService;

@Controller

public class adminOrderController {

	@Autowired
	private OrderMasterService orderMasterService;
	
	@Autowired 
	private OrderStatusService orderStatusService;
//	
//	@ModelAttribute
//	public void commonDataSendforModal(Model m) {
//		
//		
//		
//	}

	@RequestMapping("/OrderPage")
	public String Orderspage(Model m) {
		System.out.println("order is excuted");
		m.addAttribute("totalOrders", orderMasterService.listOfOrderMaster());
		return "admin/Orders";
	}

	@GetMapping("/OrderDetails")
	public String UserDetails(@RequestParam("orderId") Integer orderId, Model m) {
		m.addAttribute("OrdersDetails", orderMasterService.findByOrderMasterId(orderId));
		return "admin/OrderDetails";
	}
	
	@PostMapping("/updateStatus")
	public String orderStatusUpdate(OrderStatus orderStatus,@RequestParam("orderId")Integer orderId,Model m) {
		orderStatusService.editOrderStatus(orderStatus);
		m.addAttribute("OrdersDetails", orderMasterService.findByOrderMasterId(orderId));
		return "admin/OrderDetails";
	}
	
	
	@PostMapping("/orderCancel")
	public String cancelOrder(OrderStatus orderStatus,@RequestParam("orderId") Integer orderId,Model m) {
		orderStatusService.editOrderStatus(orderStatus);
		m.addAttribute("OrdersDetails", orderMasterService.findByOrderMasterId(orderId));
		return "admin/OrderDetails";
	}
	
	
	
	@RequestMapping("/pendingOrder")
	public String pendingOrder(Model m) {
		
		m.addAttribute("totalOrders", orderMasterService.pendingListOfOrderMaster());
		return "admin/OrderDetails";
	}
	
}
