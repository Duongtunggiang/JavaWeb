package entity;

public class Customer {
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	private int id;
	private String customerName;
	private int userId;
	private String address;
	private int phoneNumber;
	private String email;
	public Customer(int id, String customerName, int userId, String address, int phoneNumber, String email) {
		super();
		this.id = id;
		this.customerName = customerName;
		this.userId = userId;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}	
