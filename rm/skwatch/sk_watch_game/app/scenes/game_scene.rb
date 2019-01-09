class GameScene < SKScene
  def sceneDidLoad
    # Setup your scene here

    NSLog("GameScene loaded")

    @triangleNode = TriangleNode.spriteNodeWithImageNamed("triangle")
    @triangleNode.position = CGPointMake(0.51, 1.0/3.0)
    @triangleNode.anchorPoint = CGPointMake(0.51, 1.0/3.0)


    @rotateAction = SKAction.repeatActionForever(SKAction.rotateByAngle(Math::PI, duration:2))

    @triangleNode.runAction(@rotateAction)
    @rotating = true

    self.addChild(@triangleNode)
  end

  # play/pause the rotation SKAction
  def toggleRotateAction
    if @rotating
      @triangleNode.paused = true;
      @rotating = false
    else
      @triangleNode.paused = false
      @rotating = true
    end
  end

  #  Called before each frame is rendered
  def update(currentTime)
  end
end
