package com.claim.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shoppingCart")
public class ShoppingCart {
	
	@Id
	@Column(name="productId")
	private String productId;
	
	@Column(name="productName")
	private String productName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="productPrice")
	private double productPrice;
	
	@Column(name="discount")
	private double promoCode;
	
	@Column(name="total")
	private double total;
	
	@Column(name="active")
	private boolean active;

	@Column(name="size")
	private String size;
	
	@Column(name="colors")
	private String colors;
	
	@Column(name="person")
	private String email;


	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}


	public double getPromoCode() {
		return promoCode;
	}

	public void setPromoCode(double promoCode) {
		this.promoCode = promoCode;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	
	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}


	public String getColors() {
		return colors;
	}

	public void setColors(String colors) {
		this.colors = colors;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
