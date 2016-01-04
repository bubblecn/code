//返利收费，继承CashSuper
    public class CashReturn  implements CashSuper
    {
        private double moneyCondition = 0.0d;
        private double moneyReturn = 0.0d;
        //初始化时必须要输入返利条件和返利值，比如满300返100，则moneyCondition为300，moneyReturn为100
        public CashReturn(double moneyCondition, double moneyReturn)
        {
            this.moneyCondition = moneyCondition;
            this.moneyReturn =  moneyReturn;
        }
        public  double acceptCash(double money)
        {
            double result = money;
            //若大于返利条件，则需要减去返利值
            if (money >= moneyCondition)
                result = money - Math.floor(money / moneyCondition) * moneyReturn;

            return result;
        }
    }
