package entity;

public class product {
	private static final long serialVesionUID = 1L;
	private int id;
	private String productName;
	private String productType;
	private String productCategoryPath;
	private String img;
	private int unitPrice;	
	
	public product(int id, String productName, String productType, String productCategoryPath, String img,
			int unitPrice) {
		super();
		this.id = id;
		this.productName = productName;
		this.productType = productType;
		this.productCategoryPath = productCategoryPath;
		this.img = img;
		this.unitPrice = unitPrice;
	}
	public String getProductCategoryPath() {
		return productCategoryPath;
	}
	public void setProductCategoryPath(String productCategoryPath) {
		this.productCategoryPath = productCategoryPath;
	}

	public product() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	@Override
	public String toString() {
		return "product [id=" + id + ", productName=" + productName + ", productType=" + productType
				+ ", productCategoryPath=" + productCategoryPath + ", img=" + img + ", unitPrice=" + unitPrice + "]";
	}
}
