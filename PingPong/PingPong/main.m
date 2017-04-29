//
//  main.m
//  PingPong
//
//Simulates a PingPong game using random outcomes, with the following win conditions:
//First player to 21, while leading by 2 or more points, is the winner
//
//  Created by yuzu on 2017/04/28.
//  Copyright © 2017 Sarah Kohl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
    }
    
    int Player1 = 0;
    int Player2 = 0;
    
    
    while((Player1 < 21 && Player2 < 21) || ((Player1-Player2)*(Player1-Player2) < 4))
    {
        if(arc4random()%2){
            Player1++;
        }
        else{
            Player2++;
        }
    }
    
    NSLog(@"Final Score: %d to %d", Player1, Player2);
    
    if(Player1 > Player2)
    {
        NSLog(@"Player 1 wins!");
    }
    else
    {
        NSLog(@"Player 2 wins!");
    }
    
    
    
    return 0;
}
