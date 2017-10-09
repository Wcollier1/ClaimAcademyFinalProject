package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.ShoppingCart;


public interface ShoppingCartRepository extends JpaRepository<ShoppingCart, String> {
	

	@Query("Select S from ShoppingCart S where S.email=:email and S.active=true")
	public List<ShoppingCart> sCarts(@Param("email")String email);
	
	@Transactional
	@Modifying
	@Query("Delete from ShoppingCart S where S.email=:email and S.productId=:productId")
	public void dCarts(@Param("email")String email,@Param("productId")String productId);
	
	@Query("Select S from ShoppingCart S")
	public List<ShoppingCart> adminproducts();
	
	
	
}
