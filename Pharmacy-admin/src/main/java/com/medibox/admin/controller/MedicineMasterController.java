package com.medibox.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medibox.admin.dao.TherapeuticClassReprository;
import com.medibox.admin.model.TherapeuticClass;
import com.medibox.admin.service.implement.TherapeuticClassServiceImplemention;

@Controller
public class MedicineMasterController {
	
//	@Autowired
//	private TherapeuticClassServiceImplemention therapeuticClassImp;
//	
//	@PostMapping("/addtherapeuticclass")
//	public String addtherapeuticclass(TherapeuticClass therapeuticClass) {
//		System.out.println(" addtherapeuticclass is executed");
//		therapeuticClassImp.addTherapeuticClass(therapeuticClass);
//		return "medicineMaster";
//	}

}
