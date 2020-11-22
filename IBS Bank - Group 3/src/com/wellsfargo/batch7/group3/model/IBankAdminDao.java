package com.wellsfargo.batch7.group3.model;

import com.wellsfargo.batch7.group3.entities.CustomerTrasactionsInfo;
import com.wellsfargo.batch7.group3.exception.IBSException;

public interface IBankAdminDao {
	
	CustomerTrasactionsInfo chkCustStatement(CustomerTrasactionsInfo custAcct) throws IBSException;
	CustomerTrasactionsInfo fundDepositEntry(CustomerTrasactionsInfo custAcct) throws IBSException;
	
	
}
