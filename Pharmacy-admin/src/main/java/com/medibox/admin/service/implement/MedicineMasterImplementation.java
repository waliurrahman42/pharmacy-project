package com.medibox.admin.service.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medibox.admin.dao.MedicineMasterReprository;
import com.medibox.admin.model.MedicineMaster;
import com.medibox.admin.service.MedicineMasterService;

@Service
public class MedicineMasterImplementation implements MedicineMasterService{

	@Autowired
	private MedicineMasterReprository medicineMasterRepro;

	@Override
	public MedicineMaster saveMedicine(MedicineMaster med) {
		// TODO Auto-generated method stub
		return medicineMasterRepro.save(med);
	}

	@Override
	public MedicineMaster findByMedicineId(Integer medicineId) {
		
		if(medicineId!=null)
			return medicineMasterRepro.findByMedicineId(medicineId);
		return null;
	}

	@Override
	public void deleteMedicine(MedicineMaster med) {
		if( med!=null) {
				medicineMasterRepro.delete(med);
		}
	}

	@Override
	public void editMedicine(MedicineMaster med) {
		if( med!=null) {
		//	medicineMasterRepro.editMedicine(med);
		}
	}
	
	
	
}