class GameScene < TriangleRotationScene
  def sceneDidLoad
    super

    # Setup your scene here
  end

  def touchesBegan(touches, withEvent: event)
    self.toggleRotateAction
  end

  # Called before each frame is rendered
  def update(currentTime)
  end
end
