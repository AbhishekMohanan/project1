package com.storemanagement.storemanagement.serviceinterface;

import java.util.List;

import com.storemanagement.storemanagement.model.Product;

public interface ProductServiceClass {

	List<Product> viewProduct();
	void insertProduct(Product product);
	void deleteProduct(int product_id );
	Product editProduct(int product_id);
	
	
	
}
