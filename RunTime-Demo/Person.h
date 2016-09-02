//
//  Person.h
//  RunTime-Demo
//
//  Created by hjq on 16/9/2.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *sex;

- (NSString *)sayName;
- (NSString *)saySex;

@end
