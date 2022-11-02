package com.storemanagement.storemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.storemanagement.storemanagement.model.Category;

public interface CategoryRepository extends JpaRepository<Category,Integer> {

}