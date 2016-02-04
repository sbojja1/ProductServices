package Beans;

//import sun.util.calendar.LocalGregorianCalendar.Date;

public class ProductBean {
int productId;
String productName;
int productQuantity;
int productPricePerUnit;
String last_update;
int catId;
public int getCatId() {
	return catId;
}
public void setCatId(int catId) {
	this.catId = catId;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getProductQuantity() {
	return productQuantity;
}
public void setProductQuantity(int productQuantity) {
	this.productQuantity = productQuantity;
}
public int getProductPricePerUnit() {
	return productPricePerUnit;
}
public void setProductPricePerUnit(int productPricePerUnit) {
	this.productPricePerUnit = productPricePerUnit;
}
public String getLast_update() {
	return last_update;
}
public void setLast_update(String last_update) {
	this.last_update = last_update;
}
public ProductBean() {
	super();
	// TODO Auto-generated constructor stub
}



}
