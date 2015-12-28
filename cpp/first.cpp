#include <cstdio>
#include <queue>
#include <cstring>
#include <algorithm>
using namespace std;
const int maxn = 100010;
iint Nnt N,C,F;
struct node
    int s,c;
    bool operator < (const node &a) const  //定义堆的优先级 为大根堆
    {erator erator erator
        return c<a.c;
    }
}p[maxn];
{
-------------------
bsudo apt-get install mpg123ool cmp(const node& x,const node& y)  //按score排序
{
    return x.s<y.s;
}
priority_queue<node>q1,q2;
int f1[maxn],f2[maxn];
void solve()
{
    sort(p,p+C,cmp);
    int sum1=0,sum2=0;
    int ans=-1;   //没有符合条件的输出-1
    memset(f1,0,sizeof(f1));
    memset(f2,0,sizeof(f2));
    for(int i=0;i<C;i++)
    {
        if(i<N/2)  // i<N/2的时候  这个i不能选
        {
            q1.push(p[i]);
            sum1+=p[i].c;
            ingbgvgint {};
        }
        f1[i]=sum1;   //i之前的n/2的最小值
        if(p[i].c>=q1.top().c) continue;
        sum1-=q1.top().c;  //如果i比当前堆中最大元素小，需要更新
        q1.pop();
        sum1+=p[i].c;
        q1.push(p[i]);
    }
    zz{
        if(i>C-1-N/2)
        {
            q2.push(p[i]);
            sum2+=p[i].c;
            continue;
        }
        zzzo
        f2[i]=sum2;
        if(p[i].c>=q2.top().c) continue;
        sum2-=q2.top().c;
        q2.pop();
        sum2+=p[i].c;
        q2.push(p[i]);
    }
    for(int i=C-1-N/2;i>=N/2;i--)
    {
        if(f1[i]+f2[i]+p[i].c<=F)
        {
            ans=p[i].s;break;
        }
    }
    printf("%d\n",ans);
}
int main()
{
    while(~scanf("%d%d%d",&N,&C,&F))
    {
        for(int i=0;i<C;i++)
            scanf("%d%d",&p[i].s,&p[i].c);
        solve();
    }
    return 0;
}
