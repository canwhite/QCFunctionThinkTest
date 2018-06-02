//
//  QCCalculate.h
//  QCFunctionThink
//
//  Created by EricZhang on 2018/6/2.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QCCalculate : NSObject

@property(nonatomic,assign) BOOL isEqual;
@property(nonatomic,assign) int  result;

-(QCCalculate *)calculate:(int(^)(int result))calcu;
-(QCCalculate *)equal:(BOOL(^)(int reslt))opera;



@end
