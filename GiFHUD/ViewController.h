//
//  ViewController.h
//  GiFHUD
//
//  Created by 王森 http://www.51zan.cc on 25/11/15.
//  Copyright (c) 2015-11-25 王森. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)showPressed:(id)sender;
- (IBAction)showWithOverlayPressed:(id)sender;
- (IBAction)dismissPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
- (IBAction)pushbtn:(id)sender;
@end

