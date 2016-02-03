//
//  main.m
//  FizzBuzzCheck
//
//  Created by Arun Kumar Nama on 19/12/15.
//  Copyright (c) 2015 ArunApp. All rights reserved.
//



#import <Foundation/Foundation.h>

#define NUMBER_COUNT 100

BOOL isDivisible(int number, int div)
{
    int n = number;
    
    while (n >= div) {
        
        n = (n -div);
        
        if (n ==0) {
            return TRUE;
        }
    }
    return FALSE;
}

void worstFizzBuzz()
{
    
    NSDate *methodStart = [NSDate date];
    for (int number =1; number<=NUMBER_COUNT; number++) {
        
        
        
        if( isDivisible(number,3) && isDivisible(number,5))
        {
             NSLog(@"%d is : FizzBuzz",number);
            
            
        }
        else if(isDivisible(number,3) || isDivisible(number,5))
        {
            
            if( isDivisible(number,3))
            {
                 NSLog(@"%d is : Fizz",number);
                
                
            }
            if( isDivisible(number,5))
            {
                 NSLog(@"%d is : Buzz",number);
                
                
            }
            
            
        }
        if( !isDivisible(number,3) && !isDivisible(number,5))
        {
             NSLog(@"%d is : %d",number,number);
            
        }
        
        
        
    }
    
    
    NSDate *methodFinish = [NSDate date];
    
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    
    NSLog(@"Worst: executionTime = %f", executionTime);
    

}

void bestFizzBuzz()
{
    NSDate *methodStart = [NSDate date];
    
    for(int number = 1; number <= NUMBER_COUNT ; number++)
    {
        
        BOOL isFizz = (number % 3 == 0) ? TRUE: FALSE;
        BOOL isBuzz = (number % 5 == 0) ? TRUE: FALSE;
        
        if(isFizz && isBuzz)
        {
             NSLog(@"%d is : FizzBuzz",number);
        }
        else if(isFizz)
        {
              NSLog(@"%d is : Fizz",number);
        }
        else if(isBuzz)
        {
              NSLog(@"%d is : Buzz",number);
        }
        else
        {
              NSLog(@"%d is : %d",number,number);
        }
    }
    
    NSDate *methodFinish = [NSDate date];
    
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    
    NSLog(@"Best: executionTime = %f", executionTime);

}
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        worstFizzBuzz();
        NSLog(@"###############################");
        NSLog(@"###############################");
        bestFizzBuzz();
 
        
    }
 
    
    return 0;
 
}


