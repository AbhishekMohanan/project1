package com.storemanagement.storemanagement.serviceinterface;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.storemanagement.storemanagement.model.Supplier;

public interface ServiceClass {

	List<Supplier> viewSupplier();

	void insertSupplier(Supplier supplier);

	void deleteSupplier(int supplierId);

	Supplier editSupplier(int supplierId);
	
//	int update (int supplierId , String supplierName, String mobileNo );
	
	

}
 