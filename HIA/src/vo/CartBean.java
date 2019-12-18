package vo;

import java.sql.Date;

public class CartBean {
	private int cart_num;
	private int pay_num;
	private int cafe_num;
	private int coffee_num;
	private String coffee_file;
	private int price;
	private int amount;
	private String id;
	private String coffee_name;
	private String cafe_name;
	private Date date;
	private String getTime;
	
	
	
	public String getCoffee_file() {
		return coffee_file;
	}
	public void setCoffee_file(String coffee_file) {
		this.coffee_file = coffee_file;
	}
	public String getGetTime() {
		return getTime;
	}
	public void setGetTime(String getTime) {
		this.getTime = getTime;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getPay_num() {
		return pay_num;
	}
	public void setPay_num(int pay_num) {
		this.pay_num = pay_num;
	}
	public int getCafe_num() {
		return cafe_num;
	}
	public void setCafe_num(int cafe_num) {
		this.cafe_num = cafe_num;
	}
	public int getCoffee_num() {
		return coffee_num;
	}
	public void setCoffee_num(int coffee_num) {
		this.coffee_num = coffee_num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCoffee_name() {
		return coffee_name;
	}
	public void setCoffee_name(String coffee_name) {
		this.coffee_name = coffee_name;
	}
	public String getCafe_name() {
		return cafe_name;
	}
	public void setCafe_name(String cafe_name) {
		this.cafe_name = cafe_name;
	}
}
