package com.wellsfargo.batch7.group3.model;

import com.wellsfargo.batch7.group3.entities.CustomerAccount;
import com.wellsfargo.batch7.group3.entities.KycDetails;
import com.wellsfargo.batch7.group3.entities.ServiceProvider;
import com.wellsfargo.batch7.group3.exception.IBSException;

public interface IVerifyKYC {

	KycDetails validateKYC(KycDetails regAcct) throws IBSException; // Approve/reject registration & send mail accordingly
	CustomerAccount createCustomerId(CustomerAccount custAcct) throws IBSException;
	ServiceProvider createServiceProviderId(ServiceProvider svcAcct) throws IBSException;
	

}
