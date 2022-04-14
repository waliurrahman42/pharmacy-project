package com.medibox.admin.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medibox.admin.model.OrderMaster;
import com.medibox.admin.reprository.OrderMasterRepository;
import com.medibox.admin.service.OrderMasterService;

public class OrderMasterServiceImplementation implements OrderMasterService {
	
	@Autowired
	private OrderMasterRepository oMasterRepository;

	@Override
	public OrderMaster addOrderMaster(OrderMaster orderMaster) {
		
		return oMasterRepository.save(orderMaster);
	}

	@Override
	public List<OrderMaster> listOfOrderMaster() {
		
		return oMasterRepository.findAll();
	}

	@Override
	public OrderMaster findByOrderMasterId(Integer OrderMasterId) {
		// TODO Auto-generated method stub
		return oMasterRepository.findOrderMasterById(OrderMasterId);
	}

	@Override
	public void deleteOrderMaster(OrderMaster OrderMaster) {
		oMasterRepository.delete(OrderMaster);
		
	}

	@Override
	public void editOrderMaster(OrderMaster OrderMaster) {
		oMasterRepository.save(OrderMaster);
		
	}

	@Override
	public int countOrderMaster() {
		
		return (int) oMasterRepository.count();
	}

	@Override
	public List<OrderMaster> pendingListOfOrderMaster() {
		
		return oMasterRepository.pendingListOfOrderMaster();
	}

}
