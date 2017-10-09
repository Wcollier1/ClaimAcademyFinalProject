package com.claim.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.ShoppingCart;
import com.claim.repository.ShoppingCartRepository;

@Service
public class ShoppingCartService {

	@Autowired
	private ShoppingCartRepository shoppingCartRepository;
	
	@Transactional
	public List<ShoppingCart> sCarts(String email) {
		return shoppingCartRepository.sCarts(email);
		
	}
	
	@Transactional
	public void dCarts(String email,String id) {
		shoppingCartRepository.dCarts(email,id);
		
	}
	
	@Transactional
	public void save(ShoppingCart cart) {
		this.shoppingCartRepository.save(cart);
	}
	
	@Transactional
	public List<ShoppingCart> adminproducts() {
		return shoppingCartRepository.adminproducts();
	}

	
}
