//
//  main.m
//  DictSample
//
//  Created by Jean Martin on 20/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DictExample.h"

DictExample *dicExample;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
                NSLog(@"Hello, World!");
        
        dicExample = [[DictExample alloc]init];
        [dicExample disp1:10];
        [dicExample disp2:@""];
    }
    return 0;
}
