//
//  InterfaceController.m
//  SKWatchGame Extension
//
//  Created by Chris McKnight on 11/30/18.
//  Copyright © 2018 Chris McKnight. All rights reserved.
//

#import "InterfaceController.h"
#import "GameScene.h"

@interface InterfaceController ()

@property (strong, nonatomic) IBOutlet WKInterfaceSKScene *skInterface;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Load the SKScene from 'GameScene.sks'
    GameScene *scene = [GameScene nodeWithFileNamed:@"GameScene"];
    
    // Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene
    [self.skInterface presentScene:scene];
    
    // Use a value that will maintain consistent frame rate
    self.skInterface.preferredFramesPerSecond = 30;
}

- (IBAction)handleTapGesture:(id)sender {
    if ([self.skInterface.scene isKindOfClass:[GameScene class]]) {
        [(GameScene *)self.skInterface.scene toggleRotateAction];
    }
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



