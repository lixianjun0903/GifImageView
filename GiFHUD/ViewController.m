//
//  ViewController.m
//  GiFHUD
//
//  Created by 王森 http://www.51zan.cc on 25/11/15.
//  Copyright (c) 2015-11-25 王森. All rights reserved.
//

#import "ViewController.h"
#import "GiFHUD.h"
#import "UIImage+GIF.h"
#import "SecondViewController.h"

#import "MBProgressHUD+LJ.h"
#import "GiFHUD.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*!
     *  @author WS, 15-11-26 16:11:07
     *
     *  使用本库注意  需要<UIImage+GIF.h>如果项目中有SDWebImage不需要从新加
     
     */
    
    
      /*!
     *  @author WS, 15-11-26 16:11:49
     *
     *  如果用了MBProgressHUD可以这样使用 前提是把MBProgressHUD+LJ的扩展拉进项目
     */
    
    [MBProgressHUD setGifWithMBProgress:@"加载中" toView:self.view];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
    
            [MBProgressHUD hideHUDForView:self.view];
    
        });
    
    
    /*!
     *  @author WS, 15-11-26 14:11:50
     *
     *   加载动态GIF的方法 不需要加.gif格式当然了可以修改 因为是SDWebImage库里拉出来的建议不进行修改
     */


    
    UIImage *images=[UIImage sd_animatedGIFNamed:@"pika3"];

    self.imageView.image=images;
    
   
}


- (IBAction)showPressed:(id)sender {
    /*!
     *  @author WS, 15-11-26 14:11:59
     *
     *  这里一定要加上.gif格式
     */
    [GiFHUD setGifWithImageName:@"pika2.gif"];

    [GiFHUD show];
}

- (IBAction)showWithOverlayPressed:(id)sender {
    [GiFHUD showWithOverlay];
    
    // dismiss after 2 seconds
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){

        [GiFHUD dismiss];
    });
}
/*!
 *  @author WS, 15-11-26 15:11:26
 *
 *  用这个GIFHUD的库关闭页面时需要删除GIFHUD
 *
 */

-(void)viewWillDisappear:(BOOL)animated{
    [GiFHUD dismiss];

}
- (IBAction)dismissPressed:(id)sender {
    [GiFHUD dismiss];
}

- (IBAction)pushbtn:(id)sender {
    SecondViewController *second=[[SecondViewController alloc]init];
    
    [self.navigationController pushViewController:second animated:YES];
    

}
@end
