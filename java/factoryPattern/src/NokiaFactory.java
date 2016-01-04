/*
 * 诺基亚工厂实现生产手机的方法
 */
public class NokiaFactory implements MobileFactory{
    public Mobile produceMobile(){
        System.out.print("诺基亚工厂制造了");
        return new Nokia();
    }
}
