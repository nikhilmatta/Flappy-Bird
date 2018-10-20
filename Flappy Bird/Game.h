//
//  Game.h
//  Flappy Bird
//
//  Created by Nikhil Matta on 23/05/15.
//  Copyright (c) 2015 Nikhil Matta. All rights reserved.
//

#import <UIKit/UIKit.h>

int BirdFlight;
int RandomTopTunnelPosition;
int RandomBottomTunnelPosition;


@interface Game : UIViewController
{
    
    IBOutlet UIImageView *Bird;
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *TunnelTop;
    IBOutlet UIImageView *TunnelBottom;
    IBOutlet UIImageView *Top;
    IBOutlet UIImageView *Bottom;

    

    
    
    NSTimer *BirdMovement;
    NSTimer *TunnelMovement;
}

-(IBAction)StartGame:(id)sender;
-(void)BirdMoving;
-(void)TunnelMoving;
-(void)PlaceTunnels;

@end
