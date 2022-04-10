package com.medibox.admin.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medibox.admin.model.SellerMedicneManager;
import com.medibox.admin.reprository.SellerMedicneManagerReporository;
import com.medibox.admin.service.SellerMedicneManagerService;
@Service
public class SellerMedicneManagerImplemtaion implements SellerMedicneManagerService {

	@Autowired
	private SellerMedicneManagerReporository sellerMedicneManagerReporository;
	
	@Override
	public SellerMedicneManager addSellerMedicneManager(SellerMedicneManager sellerMedicneManager) {
		
		return sellerMedicneManagerReporository.save(sellerMedicneManager);
	}

	@Override
	public List<SellerMedicneManager> listOfSellerMedicneManager() {
		return sellerMedicneManagerReporository.findAll();
	}

	@Override
	public SellerMedicneManager findBySellerMedicneManagerId(Integer SellerMediManagerId) {
		
		return sellerMedicneManagerReporository.findBySellerMedicneManager(SellerMediManagerId);
	}

	@Override
	public void deleteSellerMedicneManager(SellerMedicneManager sellerMedicneManager) {
		
		sellerMedicneManagerReporository.delete(sellerMedicneManager);
	}

	@Override
	public void editSellerMedicneManager(SellerMedicneManager sellerMedicneManager) {
		
		sellerMedicneManagerReporository.save(sellerMedicneManager);
		
	}

	@Override
	public List<SellerMedicneManager> findBySellerId(Integer sellerId) {
		
		return sellerMedicneManagerReporository.findBySellerId(sellerId);
	}

	@Override
	public List<SellerMedicneManager> findByMedicneId(Integer MedicneId) {
		// TODO Auto-generated method stub
		return sellerMedicneManagerReporository.findByMedicneId(MedicneId);
	}

}
