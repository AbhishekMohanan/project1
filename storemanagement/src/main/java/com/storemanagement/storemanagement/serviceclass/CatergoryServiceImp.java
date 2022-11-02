package com.storemanagement.storemanagement.serviceclass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.storemanagement.storemanagement.model.Category;
import com.storemanagement.storemanagement.repository.CategoryRepository;
import com.storemanagement.storemanagement.serviceinterface.CategoryServiceClass;

@Service
public class CatergoryServiceImp implements CategoryServiceClass{
	
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> viewCategory() {
		return categoryRepository.findAll();
	}

	@Override
	public void insertCategory(Category category) {
		this.categoryRepository.save(category);
		
	}

	@Override
	public void deleteCategory(Integer category_id) {
		this.categoryRepository.deleteById(category_id);
		
	}

	@Override
	public Category editCategory(int category_id) {
		return categoryRepository.findById(category_id).get();
	}
	
	
	
	

}
