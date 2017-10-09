package com.claim.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.CheckOut;
import com.claim.repository.CheckOutRepository;

@Service
public class CheckOutService {
	
	@Autowired
	private CheckOutRepository checkOutRepository;
	
	@Transactional
	public void save(CheckOut user) {
		this.checkOutRepository.save(user);
	}
	
	@Transactional
	public List<CheckOut> adminAddress() {
		return this.checkOutRepository.adminAddress();
	}
	
	

}
