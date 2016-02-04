package Beans;

public class TransactionBean {
int transactionId;
String dateOfTransation;
int amount;

public int getTransactionId() {
	return transactionId;
}
public void setTransactionId(int transactionId) {
	this.transactionId = transactionId;
}
public String getDateOfTransation() {
	return dateOfTransation;
}
public void setDateOfTransation(String dateOfTransation) {
	this.dateOfTransation = dateOfTransation;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}

public TransactionBean(int transactionId, String dateOfTransation, int amount, int confirmationNumber) {
	super();
	this.transactionId = transactionId;
	this.dateOfTransation = dateOfTransation;
	this.amount = amount;
	
}
}
