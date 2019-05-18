//
//  ZMViewController.m
//  ZMPodTestUILib
//
//  Created by lucking on 05/16/2019.
//  Copyright (c) 2019 lucking. All rights reserved.
//

#import "ZMViewController.h"
//#import <ZMTool.h>
//#import <ZMStaticLib.h>
//#import <UIColor+ZMTest.h>
//#import <NSString+ZMTest.h>

//#import "ZMTool.h"
//#include <ZMPodTestUILib/>

//#import <ZMTestKit/ZMTool.h>
//#import <ZMPodTestUILib/ZMPodTestUILib-umbrella.h>
//#import <zmte>
#import <ZMTestKit/ZMTool.h>
#import <ZMTestKit/ZMStaticLib.h>
#import <ZMTestKit/ZMUITools.h>
#import <ZMTestKit/ZMNSStringTool.h>
#import <ZMTestKit/ZMTestBaseView.h>
//类别
#import <ZMTestKit/UIView+ZMTest.h>


@interface ZMViewController ()

@end

@implementation ZMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"---ZMViewController ");
    NSLog(@"---aaa= %@",[ZMTool getNowTimestampOfSecond]);
    NSLog(@"---sum= %ld",[ZMStaticLib sumNum1:2 num2:6]);

    UIView *view1 = [ZMUITools zm_lineViewFrame:CGRectMake(20, 100, 100, 100)];
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    
    [ZMNSStringTool test2];
    
    
    ZMTestBaseView *view2 = [[ZMTestBaseView alloc] initWithFrame:CGRectMake(150, 100, 100, 100)];
    view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view2];
    
    [view2 test1];
    [ZMTestBaseView test2];
    

    [UIView configUIView];
    [view1 configUI];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
