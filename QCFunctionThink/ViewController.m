//
//  ViewController.m
//  QCFunctionThink
//
//  Created by EricZhang on 2018/6/2.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "ViewController.h"
#import "QCCalculate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    QCCalculate * cal = [QCCalculate new];
    BOOL is_equal = [[[cal calculate:^int(int result) {
        result += 2;
        result *= 5;
        return result;
        
    }]equal:^BOOL(int reslt) {
        //返回的结果是1，我们在QCCalculate中用isEqual接着，因为这个方法的返回值还是自身，所以可以在下边调用返回的isEqual
        return reslt = 10;
        
    }]
    isEqual];
    
    NSLog(@"isEqual:%d",is_equal);
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
