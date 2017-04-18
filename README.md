##	 Documtent
链式编程的计算工具类

## Usage
	#import "MCCalculation.h"
	
	//方式一
	self.mcCalculation = [[MCCalculation alloc] init];
    NSDecimalNumber* decimalNumber1 = 	self.mcCalculation.start(@"1").adding(@2).multiplyingBy(@"3").result;
    NSLog(@"decimalNumber1 =%@",decimalNumber1.stringValue);
    
    //方式二
    self.mcCalculation.start(@"2");
    self.mcCalculation.adding(@3);
    self.mcCalculation.multiplyingBy(@4);
    NSDecimalNumber* decimalNumber2 = self.mcCalculation.result;
    NSLog(@"decimalNumber2 =%@",decimalNumber2.stringValue);


