//正常收费，继承CashSuper
    public class CashNormal implements CashSuper
    {
        public  double acceptCash(double money)
        {
            //原价返回
            return money;
        }
    }
