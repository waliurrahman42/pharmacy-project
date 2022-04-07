package com.medibox.admin.reprository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.medibox.admin.model.MedicineMaster;

public interface MedicineMasterReprository extends JpaRepository<MedicineMaster, Integer> {

	//void editMedicine(MedicineMaster med);

	
   @Query("select u from MedicineMaster u where u.medicineId=?1")
	MedicineMaster findByMedicineId(Integer medicineId);

}
