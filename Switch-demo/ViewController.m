//
//  ViewController.m
//  Switch-demo
//
//  Created by 黄海燕 on 15/10/31.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "ViewController.h"
#import "KLSwitch.h"

#define kGreenColor [UIColor colorWithRed:144/255.0 green: 202/255.0 blue: 119/255.0 alpha: 1.0]
#define kBlueColor [UIColor colorWithRed:129/255.0 green: 198/255.0 blue: 221/255.0 alpha: 1.0]
#define kYellowColor [UIColor colorWithRed:233/255.0 green: 182/255.0 blue: 77/255.0 alpha: 1.0]
#define kOrangeColor [UIColor colorWithRed:288/255.0 green: 135/255.0 blue: 67/255.0 alpha: 1.0]

@interface ViewController ()
@property (weak, nonatomic) IBOutlet KLSwitch *smallSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [KLSwitch class]; //Required for the class to be linked properly when only linked through IB
    
    [self.smallSwitch setOnTintColor:kGreenColor];
    [self.smallSwitch setOn:YES animated:YES];
    [self.smallSwitch setDidChangeHandler:^(BOOL isOn){
        NSLog(@"Smallest switch changed to %d",isOn);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
