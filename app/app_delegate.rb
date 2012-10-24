class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @button_controller = ButtonController.alloc.initWithNibName(nil, bundle:nil)
    @window.rootViewController = @button_controller
    @window.makeKeyAndVisible
    true
  end
end
