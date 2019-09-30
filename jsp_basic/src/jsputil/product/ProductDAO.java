package jsputil.product;
 
import java.util.ArrayList;

public class ProductDAO {
	public ProductVO getProduct(String code){
		ProductVO product = new ProductVO();
		product.setCode(code);
		if(code.equals("A-100")){
			product.setName("냉장고");
			product.setPrice(100000);
		}else if(code.equals("B-101")){
			product.setName("LCD TV");
			product.setPrice(200000);
		}else if(code.equals("C-200")){
			product.setName("컴퓨터");
			product.setPrice(120000);			
		}else if(code.equals("D-100")){
			product.setName("로봇청소기");
			product.setPrice(190000);
		}else if(code.equals("E-111")){
			product.setName("나이스운동화");
			product.setPrice(190000);
		}
		return product;
	}
	
	public ArrayList getProducts(){
		ArrayList list = new ArrayList();
		list.add(getProduct("A-100"));
		list.add(getProduct("B-101"));
		list.add(getProduct("C-200"));
		list.add(getProduct("D-100"));
		list.add(getProduct("E-111"));
		return list;
	}
}
