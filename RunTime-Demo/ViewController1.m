//
//  ViewController1.m
//  RunTime-Demo
//
//  Created by hjq on 16/9/2.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "ViewController1.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController1 ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) Person *person;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.person = [Person new];
    _person.name = @"小明";
    NSLog(@"小明第一个回答是：%@",self.person.name);
}

- (void)sayName {

    unsigned int count = 0;
    
    Ivar *ivar = class_copyIvarList([self.person class], &count);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
