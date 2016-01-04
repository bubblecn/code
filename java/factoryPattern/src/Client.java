/*
 * 客户程序
 */
public class Client{
    public static void main(String argv[])
    {
        MobileFactory mf;
        Mobile m;
        mf=new MotorolaFactory();
        m=mf.produceMobile();
        m.call();
        mf=new NokiaFactory();
        m=mf.produceMobile();
        m.call();
    }
}

