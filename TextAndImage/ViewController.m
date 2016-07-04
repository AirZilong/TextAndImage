//
//  ViewController.m
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import "ViewController.h"
#import "AirStatue.h"
#import "AirStatueF.h"
#import "MyTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

/**
 *  当前的tableView
 */
@property (nonatomic,weak) UITableView *tableView;

/**
 *  Frame数据源
 */
@property (nonatomic,strong) NSMutableArray *dataArr;
@end

@implementation ViewController

/**
 *  数据源懒加载
 */
-(NSMutableArray *)dataArr
{
    if (!_dataArr)
    {
        _dataArr = [[NSMutableArray alloc] init];
        NSArray *arr = @[
                         @{@"name":@"one",
                         @"content":@"第一个asdfadsfadsfas呵呵呵呵呵呵呵呵大沙发沙发上dfjkasdfkjasdkjfsdakljasjdfk;akdjsals;fkjasdf fdjasdljkf;asfjaslkdfjasdkfj真的好难打擦擦阿斯顿发沙发沙发沙发沙发阿萨德飞机的萨芬看见爱上当会计法；阿斯顿发空间按声卡了；"
                         },
                         @{@"name":@"one2",
                           @"content":@"第二个asdfadsfadsfa阿斯顿发送到奥斯卡的饭卡上多久放假卡死的加快立法上看见了对方可骄傲是大家克服了奥斯卡对方发卡撒旦啊按时打卡机房阿斯顿发送到发电恢复按时交电费发送到发生范德萨 阿斯顿发烧的发生十大asdf撒旦防守打法阿斯顿发啥打法上发生发生分阿斯顿发阿斯顿发阿斯顿发asdf分sdfjkasdfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one3",
                           @"content":@"第三个asdfadsfadsfasdfj地方让我阿斯顿发生的开发大师傅哈市的覅花生地覅合适的发生的合法开始的减肥哈啥都会发生肯定会发手机号端口连接啊啊去俄日哦你国共啊偶的是覅个是大佛没干嘛什么kasdfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one4",
                           @"content":@"第四个asdfads阿斯顿发审批地方怕啥地偶发帕金森的按时asdf放屁那是的废话撒的结合fadsfasdfjkas奇偶偶搭建房间爱睡觉打开了房加深大家看法奥斯卡及地方驾驶的开发加快科技科技dfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one5",
                           @"content":@"第五个asdfadsfadsfa沙发沙发发顺丰和骄傲啥都会放极爱手机看对方来哈市的健康福利卡好久收到货了健康按时间段阿萨德就阿双方就看大家谁都会撒旦十大发酵可视电话按揭款蓝色的划算的空间了花生酱的回复家里是打发时间多看哈老师多看哈的离开就发发就看了的撒发生的纠纷s阿萨德覅哦啊啥地方就爱看啥vdfjkasdfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one6",
                           @"content":@"第六个asdfadsfadsfasdfj阿斯顿发搜房is大家看法爱上的那开始kasdfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one7",
                           @"content":@"第七个asdfadsfads阿萨德覅USA动画卡萨丁就会加快和国家和马拉松快点发货 fasdfjkasdfkjasdkjfsdaklj"
                           },
                         @{@"name":@"one8",
                           @"content":@"第八个asdfadsfadsfasdfjka会发生的回复看见俺说了的按时按开始了解对方好看说了的罚款了哈弗家考了多少加快圣诞节送快递发技术倒垃圾是刘德华圣诞节快乐法律近段时间法第四偶去哦呜一ueryqowueihakslzxcmvuihasfasdf爱搜ID发哈圣诞节呢贾凯里尼挥洒会发生的空间饭后死kjasdkjfsdaklj"
                           },
                         @{@"name":@"one8",
                           @"content":@"asdfadsfadsfasdfjka爱上对方就爱上对方就爱死美女你撒的开发哈坎啊sdfkjasdkjfsdaklj"
                           }
                         
        ];
        
        for (NSDictionary *dic in arr)
        {
            AirStatue *one = [[AirStatue alloc] initWith:dic];
            AirStatueF *frame = [[AirStatueF alloc] init];
            frame.statue = one;
            [_dataArr addObject:frame];
        }
    }
    return _dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubView];
}

- (void)setupSubView
{
    NSLog(@"dataArray  = %@",[[self.dataArr[2] statue] name]);
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.tableView = tableView;
}

#pragma mark -
#pragma mark - UITableViewDelegate的方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [MyTableViewCell cellWithTableView:tableView];
    cell.statueFrame = self.dataArr[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AirStatueF *frame = self.dataArr[indexPath.row];
    return frame.cellHeight;
}

@end
