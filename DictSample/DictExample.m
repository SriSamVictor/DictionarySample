//
//  DictExample.m
//  DictSample
//
//  Created by Jean Martin on 20/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import "DictExample.h"

@implementation DictExample

@synthesize studentDetailDict,EmployeeDetailDict;

// Storing in dictionary(accessing in class name)
-(void)disp1:(NSInteger)num{
    
    // define and print the dict
    studentDetailDict = @{@"Name" : @"Srinivasan",
                          @"Age" : @"23",
                          @"Department" : @"MCA",
                          @"City" : @"Madurai",
                          };
    
    NSLog(@"%@",studentDetailDict);

// Count of the dictionary:
    NSUInteger countDict = [studentDetailDict count];
    NSLog(@"---count Dict----- %lu",countDict);
    
    
// Get the value from dictionary and store to string.
    NSString *studentName = studentDetailDict[@"Name"];
    NSLog(@"Student Name : %@",studentName);
    NSString *studentAge = studentDetailDict[@"Age"];
    NSLog(@"Student Age : %@",studentAge);
    
// Url with dictionary
    NSURL *dictUrl = [NSURL URLWithString:@"http://ios.eezytutorials.com/sample-files/sample-dictionary-plist.plist"];
    NSDictionary *urlDict = [NSDictionary dictionaryWithContentsOfURL:dictUrl];
    NSLog(@"Url dictionary %@",urlDict);
    
    NSString *keyData = urlDict[@"key1"];
    NSLog(@"key Data %@",keyData);
    
// Storing dictionary with dictionary
    NSDictionary *dict1 = [NSDictionary dictionaryWithDictionary:studentDetailDict];
    NSLog(@"Dict 1 %@",dict1);
    
// Storing the dictionary with two seperate and add the key for both
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:@[studentDetailDict,urlDict] forKeys:@[@"A",@"B"]];
    NSLog(@"*****Dict 2******* %@",dict2);
    
// Dictionary with objects and keys
    NSDictionary *employeeDetail = [NSDictionary dictionaryWithObjectsAndKeys:@"Eezy",@"key1",@"Tutorials",@"key2",@"Website",@"key3",nil];
    NSLog(@"+++Employee Detail+++%@",employeeDetail);
    
    NSString *key2 = employeeDetail[@"key2"];
    NSLog(@"&&key2&& %@",key2);
    
// Storing the shared key:
    id sharedKeySet = [NSDictionary sharedKeySetForKeys:@[@"key1",@"key2"]];
    NSMutableDictionary *sampDict = [NSMutableDictionary dictionaryWithSharedKeySet:sharedKeySet];
    sampDict[@"key1"] = @"Name";
    sampDict[@"key2"] = @"Age";
    NSLog(@"-----SampDict---%@",sampDict);
    sampDict[@"key3"] = @"Occupation";
    NSLog(@"-----SampDict---%@",sampDict);
    
// Access all the keys and all the values from the dictionary and stored in array
    
    NSDictionary *itemDictionary = [NSDictionary dictionaryWithObject:@[@"Brinjal",@"PineApple",@"Meat"] forKey:@[@"Item1",@"Item2",@"Item3"]];
    NSLog(@"@@@@Item Dictionary@@@%@",itemDictionary);
    
    NSMutableArray *allValuesFromDict = (NSMutableArray *)[itemDictionary allValues];
    NSLog(@"@@@@all Values From Dict@@@%@",allValuesFromDict);
    
    NSLog(@"**Count** %ld",[allValuesFromDict count]);
    
    NSArray *allKeyFromDict = [itemDictionary allKeys];
    NSLog(@"@@@@all Values From Dict@@@%@",allKeyFromDict);
    
}
// Accessing with init
-(void)disp2:(NSString *)nameStr{

// Initial the dictionary with init
    NSDictionary *samp = [[NSDictionary alloc]init];
    NSLog(@"^^^samp^^^%@",samp);
    
// Storing the url with the dictionary
    NSURL *url = [[NSURL alloc] initWithString:@"http://ios.eezytutorials.com/sample-files/sample-dictionary-plist.plist"];
    samp = [[NSDictionary alloc]initWithContentsOfURL:url];
    NSLog(@"%@",samp);
    
// Storing objects with keys.
    NSDictionary *studentDetail = [[NSDictionary alloc]initWithObjects:@[@"Srinivasan",@"Kannan",@"Govind"] forKeys:@[@"A",@"B",@"C"]];
    NSLog(@"%@",studentDetail);
    
// Storing Objects and keys.
    NSDictionary *studDetail = [[NSDictionary alloc]initWithObjectsAndKeys:@"Srinivasan",@"Name",@"Department",@"MCA",@"Website",@"key3", nil];
     NSLog(@"%@",studDetail);

// Take the dict count and store it integer
    NSUInteger studCount = [studentDetail count];
    NSLog(@"Dictionary--- %@,Count---- %ld",studentDetail,studCount);
    
// Compare with two dictionary
    BOOL dictChecking = [studentDetail isEqualToDictionary:studDetail];
    NSLog(@"%d",dictChecking);
    if(dictChecking == 1){
        NSLog(@"Dict is equal");
    }else{
        NSLog(@"Dict is not equal");
    }
    
// Get Objects,getkeys iterator
    NSDictionary *countIter = [NSDictionary dictionaryWithObjectsAndKeys:@"Srinivasan",@"Name",@"23",@"Age",@"MCA",@"Department", nil];
    
    NSUInteger countInte = [countIter count];
    NSLog(@"$$ Count $$ %ld",countInte);
    
    __unsafe_unretained id objects[countInte];
    __unsafe_unretained id keys[countInte];
    
    [countIter getObjects:objects andKeys:keys count:3];

    for(int i = 0; i < countInte; i++){
         NSLog(@"%@ : %@",keys[i], objects[i]);
}
    
// Object for key:
    
    id name = [countIter objectForKey:@"Name"];
    NSLog(@"Name %@",name);

// Object for key subscripted:

    id age = [countIter objectForKeyedSubscript:@"Age"];
     NSLog(@"Age %@",age);
    
// Value for key
    NSLog(@"Department %@",[countIter valueForKey:@"Department"]);
    
// Enumerating dictionary for the key
    NSDictionary *dict1 = [NSDictionary dictionaryWithObject:@[@"001",@"srinivasan",@"developer",@"madurai"] forKey:@[@"Id",@"name",@"designation",@"location"]];
    
    NSEnumerator *dictEnum1 = [dict1 keyEnumerator];
    id key;
    
    while (key =  [dictEnum1 nextObject]){
        NSLog(@"key : %@",key);
    }

// Enumeratin dictionary for the values:
    NSDictionary *dict2 = [NSDictionary dictionaryWithObject:@[@"001",@"srinivasan",@"developer",@"madurai"] forKey:@[@"Id",@"name",@"designation",@"location"]];
    
    NSEnumerator *dictEnum2 = [dict2 keyEnumerator];
    id obj;
    
    while (obj =  [dictEnum2 nextObject]){
        NSLog(@"obj : %@",[dict2 objectForKey:obj]);
    }
  
}  
  
@end
