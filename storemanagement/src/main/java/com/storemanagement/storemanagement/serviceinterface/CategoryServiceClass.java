package com.storemanagement.storemanagement.serviceinterface;

import java.util.List;

import com.storemanagement.storemanagement.model.Category;



public interface CategoryServiceClass {
	List<Category> viewCategory();
	void insertCategory(Category category);
	void deleteCategory(Integer category_id);
    Category editCategory(int category_id);


}
