//
//  SecondViewController.m
//  GiFHUD
//
//  Created by 王森 http://www.51zan.cc on 15/11/26.
//  Copyright © 2015年 王森. All rights reserved.
//

#import "SecondViewController.h"
#import "MBProgressHUD.h"
#import "UIImage+GIF.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showSuccess:@"正在加载"];
    
    // Do any additional setup after loading the view from its nib.
}


-(void)showSuccess:(NSString *)messagestr
{
    //提示成功
    MBProgressHUD *newhud = [[MBProgressHUD alloc] initWithView:self.view];
    newhud.userInteractionEnabled = NO;
    newhud.color = [UIColor clearColor];//这儿表示无背景
    /*!
     *  @author WS, 15-11-26 15:11:52
     *
     *  是否显示遮罩
     */
    newhud.dimBackground = YES;
    [self.view addSubview:newhud];
    newhud.labelText = messagestr;
    /*!
     *  @author WS, 15-11-26 15:11:05
     *
     *  字体颜色
     */
    newhud.labelColor=[UIColor blackColor];
    
    newhud.mode = MBProgressHUDModeCustomView;
    
    UIImage *images=[UIImage sd_animatedGIFNamed:@"pika3"];

    newhud.customView = [[UIImageView alloc] initWithImage:images];
    
    [newhud showAnimated:YES whileExecutingBlock:^{
        sleep(2.1);
    } completionBlock:^{
        [newhud removeFromSuperview];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
