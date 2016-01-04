/*
 * 摩托罗拉工厂实现生产手机的方法
 */
public class MotorolaFactory implements MobileFactory{
    public Mobile produceMobile(){
        System.out.print("摩托罗拉工厂制造了");
        return new Motorola();
    }
}
