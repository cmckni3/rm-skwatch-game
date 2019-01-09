# base logic for adding TriangleNode to scene with rotate SKAction
# can start and pause SKAction as well
class TriangleRotationScene < SKScene
  def sceneDidLoad
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
      @triangleNode.paused = true
      @rotating = false
    else
      @triangleNode.paused = false
      @rotating = true
    end
  end
end
