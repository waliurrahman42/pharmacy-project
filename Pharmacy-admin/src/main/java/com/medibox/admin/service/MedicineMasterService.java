package com.medibox.admin.service;

import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.MedicineMaster;

public interface MedicineMasterService {

	
	MedicineMaster saveMedicine(MedicineMaster med) ;
		
	

	MedicineMaster findByMedicineId(Integer medicineId);
	
	

	void deleteMedicine(MedicineMaster med);

	void editMedicine(MedicineMaster med);
	
}
