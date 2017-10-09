package com.claim.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.claim.entity.CheckOut;



public interface CheckOutRepository extends JpaRepository<CheckOut, String> {
	
	@Query("Select C from CheckOut C ")
	public List<CheckOut> adminAddress();

	
	
	//@Query("Select C from CheckOut C where C.email=:email and C.firstName=:first")
	//public List<CheckOut> cOut(@Param("email")String email);
	

}
