package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, String> {
	
	@Query("Select P from Product P where P.id in (1,4,7,10,13,16,19,22)")
	public List<Product> limit();
	
	@Query("Select P from Product P where P.gender = 'male'")
	public List<Product> malefragrances();
	
	@Query("Select P from Product P where P.gender = 'female'")
	public List<Product> femalefragrances();
	
	//Mens Fragrance
	
	@Query("Select P from Product P where P.gender = 'male' and id in (1,4,7,10,13)")
	public List<Product> maleGender1();
	
	@Query("Select P from Product P where P.gender = 'male' and id in (16,19,22,25,28)")
	public List<Product> maleGender2();
	
	@Query("Select P from Product P where P.gender = 'male' and id in (31,34,37,40,43)")
	public List<Product> maleGender3();
	
	
	@Query("Select P from Product P where P.gender = 'male' and id in (46,49,52,55)")
	public List<Product> maleGender4();
	
	//Womens Fragrance
	
	@Query("Select P from Product P where P.gender = 'female' and id in (58,61,64,67,70)")
	public List<Product> femaleGender1();
	
	@Query("Select P from Product P where P.gender = 'female' and id in (73,76,79,82,85)")
	public List<Product> femaleGender2();
	
	
	@Query("Select P from Product P where P.gender = 'female' and id in (88,91,94,97,100)")
	public List<Product> femaleGender3();
	
	
	@Query("Select P from Product P where P.gender = 'female' and id in (103,106,109,112)")
	public List<Product> femaleGender4();
	
	@Query("Select P from Product P where P.gender = 'male' and productId=:id)")
	public Product menAnucci(@Param(value = "id") String id);
	
	@Query("Select P from Product P where P.gender = 'female' and productId=:id)")
	public Product womenAmberWhite(@Param(value = "id") String id);
	
	

}
