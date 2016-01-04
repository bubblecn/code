/*
 * 基金类
 */
public class Fund {
	Stock gu1;
	Stock gu2;
	Stock gu3;
	NationDebt1 nd1;
	Realty1 rt1;

	public Fund() {
		gu1 = new Stock("gu1");
		gu2 = new Stock("gu2");
		gu3 = new Stock("gu3");
		nd1 = new NationDebt1("nd1");
		rt1 = new Realty1("rt1");
	}

	public void BuyFund(){
		gu1.Buy();
		gu2.Buy();
		gu2.Buy();
		nd1.Buy();
		rt1.Buy();
	}
	
	public void SellFund(){
		gu1.Sell();
		gu2.Sell();
		gu2.Sell();
		nd1.Sell();
		rt1.Sell();
	}
}
