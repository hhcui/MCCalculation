//
//  calculation.m
//  3123123123
//
//  Created by cuihh on 17/3/14.
//  Copyright © 2017年 marc. All rights reserved.
//

#import "MCCalculation.h"

@implementation MCCalculation
-(CalculateOption)start
{
    return ^(id inputNum){
        if (inputNum ==nil ||
            [inputNum isEqualToString:@""]) {
            self.result = [NSDecimalNumber decimalNumberWithString:@"0"];
        }else{
            self.result = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@",inputNum]];
        }
        
        return self;
    };
}

-(CalculateOption)adding
{
    return ^(id inputNum){
        if (inputNum ==nil ||
            [inputNum isEqual:@""]) {
            self.result = [NSDecimalNumber decimalNumberWithString:@"0"];
            return self;
        }
        NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@",inputNum]];
        self.result = (self.result == nil ? decimalNumber :[self.result decimalNumberByAdding:decimalNumber]);
        return self;
    };
}

-(CalculateOption)subtracting
{
    return ^(id inputNum){
        if (inputNum ==nil ||
            [inputNum isEqual:@""]) {
            self.result = [NSDecimalNumber decimalNumberWithString:@"0"];
            return self;
        }
        NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@",inputNum]];
        self.result = (self.result == nil ? decimalNumber :[self.result decimalNumberBySubtracting:decimalNumber]);
        return self;
    };
}

-(CalculateOption)multiplyingBy
{
    return ^(id inputNum){
        if (inputNum ==nil ||
            [inputNum isEqual:@""]) {
            self.result = [NSDecimalNumber decimalNumberWithString:@"0"];
            return self;
        }
        NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@",inputNum]];
        self.result = (self.result == nil ? decimalNumber :[self.result decimalNumberByMultiplyingBy:decimalNumber]);
        return self;
    };
}

-(CalculateOption)dividingBy
{
    return ^(id inputNum){
        if (inputNum ==nil ||
            [inputNum isEqual:@""]) {
            self.result = [NSDecimalNumber decimalNumberWithString:@"0"];
            return self;
        }
        NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%@",inputNum]];
        self.result = (self.result == nil ? decimalNumber :[self.result decimalNumberByDividingBy:decimalNumber]);
        return self;
    };
}

- (double)resultDouble {
    NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
                                       
                                       decimalNumberHandlerWithRoundingMode:NSRoundUp
                                       
                                       scale:2
                                       
                                       raiseOnExactness:NO
                                       
                                       raiseOnOverflow:NO
                                       
                                       raiseOnUnderflow:NO
                                       
                                       raiseOnDivideByZero:YES];
    
    
    NSDecimalNumber *discount = [NSDecimalNumber decimalNumberWithString:@"0"];
    
    
    NSDecimalNumber *total = [_result decimalNumberByAdding:discount withBehavior:roundUp];
    return  total.doubleValue;
}
@end
