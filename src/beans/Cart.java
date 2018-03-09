package beans;
import java.util.ArrayList;

public class Cart {
	private String order0;
	private String order1;
	private String order2;
	private String order3;
	private String order4;
	private String order5;
	private String order6;
	private String order7;
	private String order8;
	private String order9;
	private String order10;
	private String order11;
	private String order12;
	private String order13;
	private String order14;
	private String order15;
	
	
	public String getOrder0() {
		return order0;
	}

	public void setOrder0(String order0) {
		this.order0 = order0.substring(0, order0.length() - 1);
	}





	public String getOrder1() {
		return order1;
	}

	public void setOrder1(String order1) {
		this.order1 = order1.substring(0, order1.length() - 1);
	}





	public String getOrder2() {
		return order2;
	}

	public void setOrder2(String order2) {
		this.order2 = order2.substring(0, order2.length() - 1);
	}





	public String getOrder3() {
		return order3;
	}

	public void setOrder3(String order3) {
		this.order3 = order3.substring(0, order3.length() - 1);
	}





	public String getOrder4() {
		return order4;
	}

	public void setOrder4(String order4) {
		this.order4 = order4.substring(0, order4.length() - 1);
	}
	
	
	
	

	public String getOrder5() {
		return order5;
	}

	public void setOrder5(String order5) {
		this.order5 = order5.substring(0, order5.length() - 1);
	}





	public String getOrder6() {
		return order6;
	}

	public void setOrder6(String order6) {
		this.order6 = order6.substring(0, order6.length() - 1);
	}





	public String getOrder7() {
		return order7;
	}

	public void setOrder7(String order7) {
		this.order7 = order7.substring(0, order7.length() - 1);
	}





	public String getOrder8() {
		return order8;
	}

	public void setOrder8(String order8) {
		this.order8 = order8.substring(0, order8.length() - 1);
	}





	public String getOrder9() {
		return order9;
	}

	public void setOrder9(String order9) {
		this.order9 = order9.substring(0, order9.length() - 1);
	}





	public String getOrder10() {
		return order10;
	}

	public void setOrder10(String order10) {
		this.order10 = order10.substring(0, order10.length() - 1);
	}





	public String getOrder11() {
		return order11;
	}

	public void setOrder11(String order11) {
		this.order11 = order11.substring(0, order11.length() - 1);
	}





	public String getOrder12() {
		return order12;
	}

	public void setOrder12(String order12) {
		this.order12 = order12.substring(0, order12.length() - 1);
	}





	public String getOrder13() {
		return order13;
	}

	public void setOrder13(String order13) {
		this.order13 = order13.substring(0, order13.length() - 1);
	}





	public String getOrder14() {
		return order14;
	}

	public void setOrder14(String order14) {
		this.order14 = order14.substring(0, order14.length() - 1);
	}





	public String getOrder15() {
		return order15;
	}

	public void setOrder15(String order15) {
		this.order15 = order15.substring(0, order15.length() - 1);
	}


	
	public Double orderValue() {
		double total = 0;
		
		total += (order0 != null) ? Double.parseDouble(order0) : 0;
		total += (order1 != null) ? Double.parseDouble(order1) : 0;
		total += (order2 != null) ? Double.parseDouble(order2) : 0;
		total += (order3 != null) ? Double.parseDouble(order3) : 0;
		total += (order4 != null) ? Double.parseDouble(order4) : 0;
		total += (order5 != null) ? Double.parseDouble(order5) : 0;
		total += (order6 != null) ? Double.parseDouble(order6) : 0;
		total += (order7 != null) ? Double.parseDouble(order7) : 0;
		total += (order8 != null) ? Double.parseDouble(order8) : 0;
		total += (order9 != null) ? Double.parseDouble(order9) : 0;
		total += (order10 != null) ? Double.parseDouble(order10) : 0;
		total += (order11 != null) ? Double.parseDouble(order11) : 0;
		total += (order12 != null) ? Double.parseDouble(order12) : 0;
		total += (order13 != null) ? Double.parseDouble(order13) : 0;
		total += (order14 != null) ? Double.parseDouble(order14) : 0;
		total += (order15 != null) ? Double.parseDouble(order15) : 0;

		return total;
	}
	
	
	
}
