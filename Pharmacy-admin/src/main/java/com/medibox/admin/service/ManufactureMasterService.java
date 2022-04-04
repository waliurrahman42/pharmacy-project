package com.medibox.admin.service;

import com.medibox.admin.model.ManufactureMaster;

public interface ManufactureMasterService {

	
	ManufactureMaster addManufactureMaster(ManufactureMaster manufMaster);
	
	
	ManufactureMaster findByManufactureId(Integer manufactureId);

	void deleteManufacture(ManufactureMaster manufMaster);

	void editManufacture(ManufactureMaster manufMaster);
}
