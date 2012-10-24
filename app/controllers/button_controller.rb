class ButtonController < UIViewController
  include UIButtonHelper
  def viewDidLoad
    super
    self.title = "Button"
    self.view.backgroundColor = UIColor.whiteColor
    @button = UIButtonHelper.buttonLayout
    @button.frame = [[90,150],[200,37]]
    self.view.addSubview @button
    @button = UIButtonHelper.buttonLayout
    @button.frame = [[90,300],[200,37]]
    self.view.addSubview @button
  end
end
