package com.storemanagement.storemanagement.repository;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.storemanagement.storemanagement.model.Supplier;

@Repository
public interface MyRepository extends JpaRepository<Supplier, Integer> {
	@Query("update Supplier  set supplierName =:name , mobileNo =:mobile, where supplierId =:id")
	@Modifying
	int update(@Param("id") int supplier_id , @Param("name") String supplier_name, 
			@Param("mobile") String mobile_no );
//
//	@Transactional
//	@Query("select c.companyId,c.companyName,s.supplier_id from Company c inner join Supplier s ON c.supplier_id = s.supplier_id")
//	List<Supplier> findJoin(@Param("supplierid") Supplier supplier);
}




