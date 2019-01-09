class InterfaceController < WKInterfaceController
  extend IB

  outlet :skInterface, WKInterfaceLabel

  def handleTapGesture(sender)
    NSLog("handleTapGesture %@ %@", self.skInterface.scene, self.skInterface.scene.is_a?(GameScene))
    if self.skInterface.scene.is_a?(GameScene)
      self.skInterface.scene.toggleRotateAction
    end
  end

  def awakeWithContext(context)
    super

    # Initialize variables here.
    # Configure interface objects here.

    # Load the SKScene from 'GameScene.sks'
    scene = GameScene.nodeWithFileNamed("GameScene")

    # Set the scale mode to scale to fit the window
    scene.scaleMode = SKSceneScaleModeAspectFill;

    # Present the scene
    self.skInterface.presentScene(scene)

    # Use a value that will maintain consistent frame rate
    self.skInterface.preferredFramesPerSecond = 30;

    NSLog("%@ awakeWithContext", self)
  end

  def willActivate
    # This method is called when watch view controller is about to be visible to user
    NSLog("%@ will activate", self)
    super
  end

  def didDeactivate
    # This method is called when watch view controller is no longer visible
    NSLog("%@ did deactivate", self)
    super
  end

end
