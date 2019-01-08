//
//  GameScene.m
//  SKWatchGame Extension
//
//  Created by Chris McKnight on 11/30/18.
//  Copyright © 2018 Chris McKnight. All rights reserved.
//

#import "GameScene.h"

#import "TriangleNode.h"

@implementation GameScene {
    SKSpriteNode *_triangleNode;
    SKAction *_rotateAction;
    bool _rotating;
}

- (void)sceneDidLoad {
    // Setup your scene here
    
    _triangleNode = [TriangleNode spriteNodeWithImageNamed:@"triangle"];
    _triangleNode.position = CGPointMake(0.51, 1.0/3.0);
    _triangleNode.anchorPoint = CGPointMake(0.51, 1.0/3.0);
    
    _rotateAction = [SKAction repeatActionForever:[SKAction rotateByAngle:M_PI duration:2]];
    
    [_triangleNode runAction:_rotateAction];
    _rotating = YES;
    
    [self addChild:_triangleNode];
}

- (void)toggleRotateAction {
    if (_rotating) {
        [_triangleNode setPaused:YES];
        _rotating = NO;
    } else {
        [_triangleNode setPaused:NO];
        _rotating = YES;
    }
}

-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
}

@end
