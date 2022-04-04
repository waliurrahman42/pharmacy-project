package com.medibox.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medibox.admin.dao.ChemicalClassReprository;
import com.medibox.admin.dao.ManufactureMasterReprository;
import com.medibox.admin.dao.MedicineMasterReprository;
import com.medibox.admin.dao.TherapeuticClassReprository;
import com.medibox.admin.model.ChemicalClass;
import com.medibox.admin.model.ManufactureMaster;
import com.medibox.admin.model.MedicineMaster;
import com.medibox.admin.model.TherapeuticClass;
import com.medibox.admin.service.implement.ChemicalClassImplemention;
import com.medibox.admin.service.implement.ManufactureMasterImplemention;
import com.medibox.admin.service.implement.MedicineMasterImplementation;
import com.medibox.admin.service.implement.TherapeuticClassServiceImplemention;

import java.util.*;

@Controller
public class MyController {

	@Autowired
	private TherapeuticClassReprository therapeuticClassRepo;
	@Autowired
	private ManufactureMasterReprository manufactureMasterRepo;
	@Autowired
	private ChemicalClassReprository chemicalClassReprositoryRepo;
	@Autowired
	private MedicineMasterReprository medicineMasterRepro;
	
	@Autowired
	private TherapeuticClassServiceImplemention therapeuticClassImp;
	@Autowired
	private ManufactureMasterImplemention manufactureMasterImp;
	@Autowired
	private ChemicalClassImplemention   chemicalClassImp;
	@Autowired
	private MedicineMasterImplementation   medicineMasterImp;
	
	
	
	@RequestMapping("/home")
	public String home() {
		System.out.println("home is excuted");
		return "index";
	}
	
	@RequestMapping("/index")
	public String index() {
		System.out.println("index is excuted");
		return "index";
	}
	
	

	
	@RequestMapping("/medicinemaster")
	public String medicinemaster(Model m) {
		System.out.println(" medicineMaster is executed");
		//List<TherapeuticClass> tlist =therapeuticClassRepo.findAll();
		m.addAttribute("tclasslist", therapeuticClassRepo.findAll());
		m.addAttribute("manuflist", manufactureMasterRepo.findAll());
		m.addAttribute("chemlist", chemicalClassReprositoryRepo.findAll());
		m.addAttribute("medlist", medicineMasterRepro.findAll());
		return "medicineMaster";
	}
	
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
		return "medicineMaster";
	}
	
	//delete  thepuritic name
	@GetMapping("/deletetherapeuticClass")
	public String deleteTherapeuticClass(@RequestParam("therapeuticClassId")Integer therapeuticClassId,Model m) {
		System.out.println(" delete chemicalName");
		chemicalClassImp.deleteChemicalClass(chemicalClassImp.findByChemicalClassId(therapeuticClassId));
		m.addAttribute("deleteMsg", "Deleted Therapeutic Class Name successfully!!!");
		return "medicineMaster";
	}
	
	
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
	
	//medicine add form opening
	@RequestMapping("/collapseADDMedicineData")
	public String addMedicineform(Model m) {
		System.out.println(" add medicine form is executed");
		m.addAttribute("manuf", manufactureMasterRepo.findAll());
		m.addAttribute("chemlist", chemicalClassReprositoryRepo.findAll());
		m.addAttribute("therclass", therapeuticClassRepo.findAll());
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
			return "medicineMaster";
		}
			
			//delete  manufacture name
		@GetMapping("/deletemedicine")
		public String deleteMedicine(@RequestParam("medicineId")Integer medicineId,Model m) {
			System.out.println(" delete manufacture");
			medicineMasterImp.deleteMedicine(medicineMasterImp.findByMedicineId(medicineId));
			m.addAttribute("deleteMsg", "Deleted Medicine  successfully!!!");
			return "medicineMaster";
		}
		
	
	
}
