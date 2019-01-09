class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = GameController.alloc.init

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = rootViewController
    @window.makeKeyAndVisible

    true
  end
end
