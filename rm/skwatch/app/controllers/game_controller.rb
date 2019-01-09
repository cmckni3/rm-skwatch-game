class GameController < UIViewController

  def loadView
    view = SKView.new
    view.showsFPS = true
    view.showsNodeCount = true

    self.view = view
  end

  def viewDidLoad
    super

    # Load the SKScene from 'GameScene.sks'
    scene = GameScene.nodeWithFileNamed("GameScene")

    # Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFill

    skView = self.view

    # Present the scene
    skView.presentScene(scene)
  end

  def shouldAutorotate
    true
  end

  def supportedInterfaceOrientations
    if UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone
      UIInterfaceOrientationMaskAllButUpsideDown
    else
      UIInterfaceOrientationMaskAll
    end
  end

  def prefersStatusBarHidden
    true
  end
end
