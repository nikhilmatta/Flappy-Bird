//
//  Game.m
//  Flappy Bird
//
//  Created by Nikhil Matta on 23/05/15.
//  Copyright (c) 2015 Nikhil Matta. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)StartGame:(id)sender{
    
    StartGame.hidden=YES;
    TunnelTop.hidden=NO;
    TunnelBottom.hidden=NO;

    BirdMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BirdMoving) userInfo:nil repeats:YES];
    
    [self PlaceTunnels];
    
    TunnelMovement=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(TunnelMoving) userInfo:nil repeats:YES];
    
}

-(void)TunnelMoving{
    
    TunnelTop.center= CGPointMake(TunnelTop.center.x-1, TunnelTop.center.y);
    TunnelBottom.center= CGPointMake(TunnelBottom.center.x-1, TunnelBottom.center.y);
    
    if (TunnelTop.center.x<-28) {
        [self PlaceTunnels];
    }
    
    
}




-(void)PlaceTunnels{
    
    RandomTopTunnelPosition=arc4random() %350;
    RandomTopTunnelPosition=RandomTopTunnelPosition-228;
    RandomBottomTunnelPosition=RandomTopTunnelPosition=655;
    
    TunnelTop.center=CGPointMake(340, RandomTopTunnelPosition);
    TunnelBottom.center=CGPointMake(340, RandomBottomTunnelPosition);
    
    
    
}




-(void)BirdMoving{
    
    Bird.center = CGPointMake(Bird.center.x,Bird.center.y - BirdFlight);
    
    BirdFlight=BirdFlight-5;
    
    if (BirdFlight<-15) {
        BirdFlight=-15;
    }
    
    
    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    BirdFlight = 30;
    
}



- (void)viewDidLoad {
    TunnelTop.hidden=YES;
    TunnelBottom.hidden=YES;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
