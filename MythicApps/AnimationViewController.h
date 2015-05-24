//
//  AnimationViewController.h
//  MythicApps
//
//  Created by Yoseph Radding on 5/4/15.
//  Copyright (c) 2015 Yoseph Radding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <pop/pop.h>

@interface AnimationViewController : UIViewController

-(IBAction)TestSpawnBubble:(id)sender;

@property IBOutlet UIImage *sky;
@property IBOutlet UIImage *moon;
@property IBOutlet UIImage *boat;
@property IBOutlet UIImage *water;
@property IBOutlet UIView  *underDaSea;
@end
