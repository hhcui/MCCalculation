//
//  ViewController.m
//  calculation
//
//  Created by cuihh on 17/4/18.
//  Copyright © 2017年 marc. All rights reserved.
//

#import "ViewController.h"
#import "MCCalculation.h"

@interface ViewController ()

@property(nonatomic,strong) MCCalculation * mcCalculation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mcCalculation = [[MCCalculation alloc] init];
    NSDecimalNumber* decimalNumber1 = self.mcCalculation.start(@"1").adding(@2).multiplyingBy(@"3").result;
    NSLog(@"decimalNumber1 =%@",decimalNumber1.stringValue);
    self.mcCalculation.start(@"2");
    self.mcCalculation.adding(@3);
    self.mcCalculation.multiplyingBy(@4);
    NSDecimalNumber* decimalNumber2 = self.mcCalculation.result;
    NSLog(@"decimalNumber2 =%@",decimalNumber2.stringValue);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
