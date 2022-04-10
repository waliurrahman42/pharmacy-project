package com.medibox.admin.controller.seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.medibox.admin.model.MedicineMaster;
import com.medibox.admin.model.SellerMedicneManager;
import com.medibox.admin.reprository.SellerMedicneManagerReporository;
import com.medibox.admin.service.SellerMedicneManagerService;
import com.medibox.admin.service.implement.MedicineMasterImplementation;

@Controller
public class SellerMedicineManagerController {

	@Autowired
	private SellerMedicneManagerService sellerMedMngrService;  
	@Autowired
	private MedicineMasterImplementation   medicineMasterImp;
	
	@ModelAttribute
	public void commonDataSendforModal(Model m) {
		
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/sellerMedicineManager")
	public String medicineManager(Model m) {
		m.addAttribute("listOfSellerMedicine",sellerMedMngrService.listOfSellerMedicneManager());
		m.addAttribute("listOfMedicine",medicineMasterImp.listOfMedicineMaster());
		//System.out.println(medicineMasterImp.listOfMedicineNameId());
		return "seller/sellerMedicineManager";	
	}
	
	
	
	@GetMapping("/AddinurStock")
	public String medicineManager(@RequestParam("mid")Integer mid,Model m) {
		//m.addAttribute("listOfSellerMedicine",sellerMedMngrService.listOfSellerMedicneManager());	
		m.addAttribute("singleMedicine",medicineMasterImp.findByMedicineId(mid));
		
		return "seller/sellerMedicineManager";	
	}
	
	
	
	
//	@RequestMapping(value = "/AjaxFormedicineFind", method = RequestMethod.POST)
//	@ResponseBody
//	public ModelAndView search(@RequestParam("Mname") String value) {
//		ModelAndView mv = new ModelAndView();;
//		mv.setViewName("seller/sellerMedicineManager");
//		List<MedicineMaster> medciList = medicineMasterImp.findMedicineByNameLike(value);
//		mv.addObject("med", medciList);
//		return mv;
//	}
	
	
	
}
