package Beans;

public class CustomerBean {
int customerId;
String customerName;
int customerContact;
String customerAddress;
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}
public String getCustomerName() {
	return customerName;
}

public void setCustomerName(String customerName) {
	this.customerName = customerName;
}
public int getCustomerContact() {
	return customerContact;
}
public void setCustomerContact(int customerContact) {
	this.customerContact = customerContact;
}
public String getCustomerAddress() {
	return customerAddress;
}
public void setCustomerAddress(String customerAddress) {
	this.customerAddress = customerAddress;
}

public CustomerBean(int customerId, String customerName, int customerContact, String customerAddress) {
	super();
	this.customerId = customerId;
	this.customerName = customerName;
	this.customerContact = customerContact;
	this.customerAddress = customerAddress;
}}