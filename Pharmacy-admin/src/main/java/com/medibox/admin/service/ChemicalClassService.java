package com.medibox.admin.service;

import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.ManufactureMaster;

public interface ChemicalClassService {
	
	ChemicalClass addChemicalClass(ChemicalClass cClass);

	ChemicalClass findByChemicalClassId(Integer ChemicalClassId);
	
	

	void deleteChemicalClass(ChemicalClass cClass);

	void editChemicalClass(ChemicalClass cClass);
	
}
