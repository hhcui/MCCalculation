//
//  calculation.h
//  3123123123
//
//  Created by cuihh on 17/3/14.
//  Copyright © 2017年 marc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MCCalculation;

typedef MCCalculation*(^CalculateOption)(id);

@interface MCCalculation : NSObject

/**
 结果
 */
@property(nonatomic,strong) NSDecimalNumber *result;
@property(nonatomic,assign) double resultDouble;


/**
 开始
 */
@property(nonatomic,copy) CalculateOption start;
/**
 加法
 */
@property(nonatomic,copy) CalculateOption adding;

/**
 减法
 */
@property(nonatomic,copy) CalculateOption subtracting;

/**
 乘法
 */
@property(nonatomic,copy) CalculateOption multiplyingBy;

/**
 除法
 */
@property(nonatomic,copy) CalculateOption dividingBy;

@end
