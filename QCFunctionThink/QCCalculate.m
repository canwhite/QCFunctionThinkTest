//
//  QCCalculate.m
//  QCFunctionThink
//
//  Created by EricZhang on 2018/6/2.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "QCCalculate.h"

@implementation QCCalculate

-(QCCalculate *)calculate:(int (^)(int))calcu{
    
    //我们知道，block的返回值是个整数，把这个值给result
    self.result = calcu(self.result);
    //以上的结果存储在本类
    return self;
    
}
-(QCCalculate *)equal:(BOOL (^)(int))opera{
    
    //参数是int，在block中将传过去的result和一定值做比较，结果给isEqual
    self.isEqual = opera(self.result);
    //以上的结果存储在本类
    return self;
    
}


@end
