
public class CashRebate implements CashSuper {
	private double moneyRebate = 1;  
    public CashRebate (String rebate ){  
          
         this.moneyRebate =Double.parseDouble(rebate) ;  
          
    }  
	@Override
	public double acceptCash(double money) {  
        return this.moneyRebate * money;  
    }  

}
