//package com.medibox.admin.dao.implement;
//
//import java.util.List;
//import java.util.Optional;
//import java.util.function.Function;
//
//import javax.persistence.EntityManager;
//import javax.persistence.NoResultException;
//import javax.persistence.PersistenceContext;
//import javax.transaction.Transactional;
//
//import org.springframework.stereotype.Repository;
//
//import com.medibox.admin.dao.ChemicalClassReprository;
//import com.medibox.admin.model.ChemicalClass;
//
//
//@Repository
//@Transactional
//public class ChemicalClassReprositorImplemention implements ChemicalClassReprository {
//
//	@PersistenceContext
//	private EntityManager entityManager;
//	
//	
//	public ChemicalClass findChemicalClassById(Integer chemicalId ) {
//		try {
//			return (ChemicalClass) entityManager.createQuery("from ChemicalClass where chemicalId =:chemicalId")
//					.setParameter("chemicalId", chemicalId).getSingleResult();
//		} catch (NoResultException e) {
//		}
//		
//		return null;
//	}
//
//	
//
//}
