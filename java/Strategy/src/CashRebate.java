//打折收费，继承CashSuper
    public class CashRebate implements CashSuper
    {
        private double moneyRebate = 1d;
        //初始化时，必需要输入折扣率,如八折，就是0.8
        public CashRebate(double moneyRebate)
        {
            this.moneyRebate = moneyRebate;
        }

        public  double acceptCash(double money)
        {
            return money * moneyRebate;
        }
    }
