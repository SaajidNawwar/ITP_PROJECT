package Model;

public class Suppliermodel {
	
	
	private int SuppID;
	private String name;
	private String email;
	private String veh_name;
	private String veh_mod;
	private String contactno;
	private String address;
	private float pay_amt;

	
	
	
	//getters and setters
	
	
	
	public int getSuppID() {
		return SuppID;
	}
	public void setSuppID(int suppID) {
		SuppID = suppID;
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVeh_name() {
		return veh_name;
	}
	public void setVeh_name(String veh_name) {
		this.veh_name = veh_name;
	}
	public String getVeh_mod() {
		return veh_mod;
	}
	public void setVeh_mod(String veh_mod) {
		this.veh_mod = veh_mod;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getPay_amt() {
		return pay_amt;
	}
	public void setPay_amt(float pay_amt) {
		this.pay_amt = pay_amt;
	}
	
	

	
	
	
}