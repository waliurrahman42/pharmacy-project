package com.medibox.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medibox.admin.dao.TherapeuticClassReprository;
import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.ManufactureMaster;
import com.medibox.admin.model.MedicineMaster;
import com.medibox.admin.model.TherapeuticClass;
import com.medibox.admin.service.implement.ChemicalClassImplemention;
import com.medibox.admin.service.implement.ManufactureMasterImplemention;
import com.medibox.admin.service.implement.MedicineMasterImplementation;
import com.medibox.admin.service.implement.TherapeuticClassServiceImplemention;

@Controller
public class MedicineMasterController {
	
	
	@Autowired
	private TherapeuticClassServiceImplemention therapeuticClassImp;
	@Autowired
	private ManufactureMasterImplemention manufactureMasterImp;
	@Autowired
	private ChemicalClassImplemention   chemicalClassImp;
	@Autowired
	private MedicineMasterImplementation   medicineMasterImp;
	
	
	
	
	@ModelAttribute
	public void commonDataSendforModal(Model m) {
		m.addAttribute("tclasslist",therapeuticClassImp.listOfTherapeuticClass() );
		m.addAttribute("manuflist", manufactureMasterImp.listOfManufactureMaster() );
		m.addAttribute("chemlist", chemicalClassImp.listOfChemicalClass());
		m.addAttribute("medlist", medicineMasterImp.listOfMedicineMaster());
		
	}
	
	

	
	@RequestMapping("/medicinemaster")
	public String medicinemaster(Model m) {
		System.out.println(" medicineMaster is executed");
		return "medicineMaster";
	}
	
	
	
	///////////////////////////////////////////////////////////////////////////////////////
	
	//addtherapeuticclass in db
	@PostMapping("/addtherapeuticclass")
	public String addTherapeuticClass(TherapeuticClass therapeuticClass) {
		System.out.println(" addtherapeuticclass is executed");
		therapeuticClassImp.addTherapeuticClass(therapeuticClass);
		return "medicineMaster";
	}
	
	// finding thepuritic by  id
	@GetMapping("/edittherapeuticClass")
	public String findTherapeuticClass(@RequestParam("therapeuticClassId")Integer therapeuticClassId,Model m) {
		System.out.println(" finding thepuritic by  id");
		m.addAttribute("editTherapeuticClass", therapeuticClassImp.findByTherapeuticClassId(therapeuticClassId));
		m.addAttribute("update",true);
		return "medicineMaster";
	}
	
	//update theroputic class 
	@PostMapping("/edittherapeutic")
	public String editTherapeuticClass(TherapeuticClass therapeuticClass,Model m) {
		System.out.println(" finding thepuritic by  id");
		if (therapeuticClass != null) {
			therapeuticClassImp.editTherapeuticClass(therapeuticClass);
			m.addAttribute("edit",true);
		}
			m.addAttribute("noedit",true);
		return "medicineMaster";
	}
	
	
	//delete  thepuritic name
	@GetMapping("/deletetherapeuticClass")
	public String deleteTherapeuticClass(@RequestParam("therapeuticClassId")Integer therapeuticClassId,Model m) {
		System.out.println(" delete chemicalName");
		therapeuticClassImp.deleteTherapeuticClass(therapeuticClassImp.findByTherapeuticClassId(therapeuticClassId));
		m.addAttribute("deleteMsg", "Deleted Therapeutic Class Name successfully!!!");
		return "medicineMaster";
	}
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	
	//adding manufacture class in db
	@PostMapping("/addmanufacture")
	public String addManufacture(ManufactureMaster manufactureMaster) {
		System.out.println(" addmanufacture is executed");
		manufactureMasterImp.addManufactureMaster(manufactureMaster);
		return "medicineMaster";
	}
	
	
	// finding manufacture by  id
		@GetMapping("/editmanufacture")
		public String findManufacture(@RequestParam("manufactureId")Integer manufactureId,Model m) {
			System.out.println(" finding manufacture by  id");
			m.addAttribute("editmanufactureList", manufactureMasterImp.findByManufactureId(manufactureId));
			m.addAttribute("update",true);
			return "medicineMaster";
		}
		
		@PostMapping("/updatemanufacture")
		public String updateManufacture(ManufactureMaster manufactureMaster,Model m) {
			System.out.println(" update updatemanufacture");
			if (manufactureMaster != null) {
				manufactureMasterImp.editManufacture(manufactureMaster);
				m.addAttribute("edit",true);
			}
				m.addAttribute("noedit",true);
			return "medicineMaster";
		}
		
		//delete  manufacture name
		@GetMapping("/deletemanufacture")
		public String deleteManufacture(@RequestParam("manufactureId")Integer manufactureId,Model m) {
			System.out.println(" delete manufacture");
			manufactureMasterImp.deleteManufacture(manufactureMasterImp.findByManufactureId(manufactureId));
			m.addAttribute("deleteMsg", "Deleted Manufacture Name successfully!!!");
			return "medicineMaster";
		}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//adding chemical class in db
	@PostMapping("/addchemicalclass")
	public String addChemicalClass(ChemicalClass chemicalClass) {
		System.out.println(" addmanufacture is executed");
		chemicalClassImp.addChemicalClass(chemicalClass);
		return "medicineMaster";
	}
	
	// finding Chemical class by  id
	@GetMapping("/editchemicalName")
	public String findChemicalClass(@RequestParam("chemicalId")Integer chemicalId,Model m) {
		System.out.println(" editchemicalName");
		m.addAttribute("editChemicalname", chemicalClassImp.findByChemicalClassId(chemicalId));
		m.addAttribute("update",true);
		return "medicineMaster";
	}
	
	//update Chemical class
	@PostMapping("/updateChemicalClass")
	public String updateChemicalClass(ChemicalClass chemicalClass,Model m) {
		System.out.println(" update Chemical Class");
		if (chemicalClass != null) {
			chemicalClassImp.editChemicalClass(chemicalClass);
			m.addAttribute("edit",true);
		}
			m.addAttribute("noedit",true);
		return "medicineMaster";
	}
	
	//delete  Chemicalclass name
	@GetMapping("/deletechemicalName")
	public String deleteChemicalClass(@RequestParam("chemicalId")Integer chemicalId,Model m) {
		System.out.println(" delete chemicalName");
		chemicalClassImp.deleteChemicalClass(chemicalClassImp.findByChemicalClassId(chemicalId));
		m.addAttribute("deleteMsg", "Deleted chemical Name successfully!!!");
		return "medicineMaster";
	}

	
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	
	//medicine add form opening
	@RequestMapping("/collapseADDMedicineData")
	public String addMedicineform(Model m) {
		System.out.println(" add medicine form is executed");
		m.addAttribute("manuf", manufactureMasterImp.listOfManufactureMaster());
		m.addAttribute("chemlist2", chemicalClassImp.listOfChemicalClass());
		m.addAttribute("therclass", therapeuticClassImp.listOfTherapeuticClass());
		return "medicineMaster";
	}
	
	//adding medicine data in db
	@PostMapping("/addmedicine")
	public String addMedicine(MedicineMaster medi) {
		System.out.println(" add Medicine is executed");
		medicineMasterImp.saveMedicine(medi);
		return "medicineMaster";
	}
	
	// finding manufacture by  id
		@GetMapping("/editmedicine")
		public String findMedicine(@RequestParam("medicineId")Integer medicineId,Model m) {
			System.out.println(" finding medicine by  id");
			m.addAttribute("editmedicine", medicineMasterImp.findByMedicineId(medicineId));
			m.addAttribute("editform", true);
			m.addAttribute("update",true);
			return "medicineMaster";
		}
			
		//update Medicine  
		@PostMapping("/updatemedicine")
		public String updateMedicine(MedicineMaster medi,Model m) {
			System.out.println(" edit Medicine");
			if (medi != null) {
				medicineMasterImp.editMedicine(medi);
				m.addAttribute("edit",true);
			}
				m.addAttribute("noedit",true);
			return "medicineMaster";
		}
		
		
		
		
		
	//delete Medicine  name
		@GetMapping("/deletemedicine")
		public String deleteMedicine(@RequestParam("medicineId")Integer medicineId,Model m) {
			System.out.println(" delete manufacture");
			medicineMasterImp.deleteMedicine(medicineMasterImp.findByMedicineId(medicineId));
			m.addAttribute("deleteMsg", "Deleted Medicine  successfully!!!");
			return "medicineMaster";
		}
		
}
