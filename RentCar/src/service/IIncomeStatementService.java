package service;

import java.util.ArrayList;

import Model.IncomeStatement;


public interface IIncomeStatementService {

	
	public void  insert(IncomeStatement IS);
	public ArrayList<IncomeStatement> get_IncomeStatement_details();
	
}
