package com.storemanagement.storemanagement.serviceclass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.storemanagement.storemanagement.model.Product;
import com.storemanagement.storemanagement.repository.ProductRepository;
import com.storemanagement.storemanagement.serviceinterface.ProductServiceClass;
@Service
public class ProductSeviceImp implements ProductServiceClass {

@Autowired
	ProductRepository productRepository;

	@Override
	public List<Product> viewProduct() {
		return productRepository.findAll();
	}

	@Override
	public void insertProduct(Product product) {
		this.productRepository.save(product);

	}

	@Override
	public void deleteProduct(int product_id) {
		this.productRepository.deleteById(product_id);

	}

	@Override
	public Product editProduct(int product_id) {
		return productRepository.findById(product_id).get();
	}

}
