//
//  Person.h
//  MRUseDemo
//
//  Created by zezefamily on 15/7/27.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * fristname;
@property (nonatomic, retain) NSString * lastname;
@property (nonatomic, retain) NSNumber * age;

@end
