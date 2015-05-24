//
//  AnimationViewController.m
//  MythicApps
//
//  Created by Yoseph Radding on 5/4/15.
//  Copyright (c) 2015 Yoseph Radding. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationViewController ()

@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)TestSpawnBubble:(id)sender{
//    [self spawnBubble];
    [self startDive];
}


-(void) spawnBubble{
    UIImage *bubbleImage = [UIImage imageNamed:@"bubble.png"];
    NSInteger bubbleDimensions = .03;
    NSInteger velocity = arc4random() % 20;
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (bubbleDimensions < 100){
        bubbleDimensions = 100;
    }
    NSInteger bubbleStart = (arc4random() % ((int)screenRect.size.width) - bubbleDimensions);
    NSInteger elasticity = arc4random() % 200;
    CGRect bubbleViewStart = CGRectMake(bubbleStart, screenRect.size.height, bubbleDimensions, bubbleDimensions);
    UIImageView *bubbleView = [[UIImageView alloc] initWithImage:bubbleImage];
    bubbleView.frame = bubbleViewStart;
    [bubbleView setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:bubbleView];
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPosition];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    CGPoint point = CGPointMake(bubbleStart, -bubbleDimensions);
    anim.toValue = [NSValue valueWithCGPoint:point];
    anim.duration = velocity;
    [bubbleView pop_addAnimation:anim forKey:@"bubble_go"];
}

-(void) startDive{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(self.underDaSea.frame.size.width, screenRect.size.height)];
    anim.duration = 100;
    [self.underDaSea pop_addAnimation:anim forKey:@"dive"];
    
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
