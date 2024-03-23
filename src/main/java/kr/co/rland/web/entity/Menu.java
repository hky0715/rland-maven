package kr.co.rland.web.entity;

import java.util.Date;

public class Menu {
	private int id;
	private String korName;
	private String engName;
	private int price;
	private String img;
	private boolean like;
	private Date regDate;
	
	public Menu() {
		
	}
		
	public Menu(int id, String korName, String engName, int price, String img, boolean like, Date regDate) {
		this.id = id;
		this.korName = korName;
		this.engName = engName;
		this.price = price;
		this.img = img;
		this.like = like;
		this.regDate = regDate;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getKorName() {
		return korName;
	}
	
	public void setKorName(String korName) {
		this.korName = korName;
	}
	
	public String getEngName() {
		return engName;
	}
	
	public void setEngName(String engName) {
		this.engName = engName;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public boolean getLike() {
		return like;
	}
	
	public void setLike(boolean like) {
		this.like = like;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	@Override
	public String toString() {
		return "Menu [id=" + id + ", korName=" + korName + ", engName=" + engName + ", price=" + price + ", img=" + img
				+ ", like=" + like + ", regDate=" + regDate + "]";
	}

}
