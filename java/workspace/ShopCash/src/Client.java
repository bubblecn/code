
public class Client {

	public static void main(String[] args) {  
        ContentStrategy strategy = new ContentStrategy("rebate");  
          
      double returnVal =    strategy.getResult(100);  
          
      System.out.println("reuturnVal = "+returnVal);  
    }  

}
