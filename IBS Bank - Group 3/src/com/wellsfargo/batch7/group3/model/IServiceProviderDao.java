package com.wellsfargo.batch7.group3.model;

import com.wellsfargo.batch7.group3.entities.ServiceProvider;
import com.wellsfargo.batch7.group3.exception.IBSException;

public interface IServiceProviderDao {
	
	ServiceProvider checkpayments(ServiceProvider chkpymnt) throws IBSException;

}
