package com.claim.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Product;
import com.claim.repository.ProductRepository;

@Service
public class ProductService {

	
	@Autowired
	private ProductRepository productRepository;
	
	//public List<Product> getProducts() {
	//	return productRepository.findAll();
	//}
	
	//Index
	@Transactional
	public List<Product> limit() {
		return productRepository.limit();
	}
	
	//Men View More
	@Transactional
	public List<Product> malefragrances() {
		return productRepository.malefragrances();
	}
	
	//Women View More
	@Transactional
	public List<Product> femalefragrances() {
		return productRepository.femalefragrances();
	}
	
	//Mens Fragrance Menu
	@Transactional
	public List<Product> maleGender1() {
		return productRepository.maleGender1();
	}
	
	//Mens Fragrance Menu
	@Transactional
	public List<Product> maleGender2() {
		return productRepository.maleGender2();
	}
	
	//Mens Fragrance Menu
	@Transactional
	public List<Product> maleGender3() {
		return productRepository.maleGender3();
	}
	
	//Mens Fragrance Menu
	@Transactional
	public List<Product> maleGender4() {
		return productRepository.maleGender4();
	}
	
	//Womens Fragrance Menu
	@Transactional
	public List<Product> femaleGender1() {
		return productRepository.femaleGender1();
	}
	
	//Womens Fragrance Menu
	@Transactional
	public List<Product> femaleGender2() {
		return productRepository.femaleGender2();
	}
	
	//Womens Fragrance Menu
	@Transactional
	public List<Product> femaleGender3() {
		return productRepository.femaleGender3();
	}
	
	//Womens Fragrance Menu
	@Transactional
	public List<Product> femaleGender4() {
		return productRepository.femaleGender4();
	}
	
	//Men Single Page
	@Transactional
	public Product menAnucci(String id) {
		return productRepository.menAnucci(id);
	}
	
	//Women Single Page
	@Transactional
	public Product womenAmberWhite(String id) {
		return productRepository.womenAmberWhite(id);
	}

}
