package it.uniroma3.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Column;


@Entity
@NamedQueries({
@NamedQuery(name="findAllProducts", query="SELECT p from Product p"),
@NamedQuery(name="getProviders", query = "SELECT x FROM Provider x WHERE x.product_id = :product_idX")
})
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@Column (nullable=false)
	private String name;
	private Float price;
	private String description;
	@Column (nullable=false)
	private String code;
	private int inStock;
	
	@ManyToMany(fetch=FetchType.LAZY)
	private List<Provider> providers;

	public Product() {
	}

	public Product(String name, Float price, String description, String code,int inStock) {
		this.name = name.toUpperCase();
		this.price = price;
		this.description = description;
		this.code = code.toUpperCase();
		this.inStock=inStock;
	}

	public Long getId() {
		return id;
	}
	
	/*public void setId(Long id){
		this.id=id;
	}  */

	public int getInStock(){
		return this.inStock;
	}
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return this.code;
	}
	
	public void setInStock(int inStock){
		this.inStock=inStock;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public boolean equals(Object obj) {
		Product product = (Product)obj;
		return this.getCode().equals(product.getCode());
	}

	public int hashCode() {
		return this.code.hashCode();
	}

	public String toString() {
		final StringBuilder sb = new StringBuilder();
		sb.append("Product"); 
		sb.append("{id=").append(id); 
		sb.append(", name='").append(name); 
		sb.append(", price=").append(price); 
		sb.append(", description='").append(description); 
		sb.append(", code='").append(code);
		sb.append("}\n");
		return sb.toString();
	}

	public List<Provider> getProviders() {
		return providers;
	}

	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}

}