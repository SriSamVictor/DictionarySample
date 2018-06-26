//
//  DictExample.h
//  DictSample
//
//  Created by Jean Martin on 20/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DictExample : NSObject
  
@property (strong, nonatomic)NSDictionary *studentDetailDict;
@property (strong, nonatomic)NSMutableDictionary *EmployeeDetailDict;

-(void)disp1:(NSInteger)num;
-(void)disp2:(NSString *)nameStr;

@end
