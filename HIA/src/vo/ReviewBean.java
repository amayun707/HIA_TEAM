package vo;

import java.sql.Date;

public class ReviewBean {
	private int review_num;
	private String id;
	private String review;
	private int rating;
	private Date date;
	private int cafe_num;
	private int coffee_num;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
}
