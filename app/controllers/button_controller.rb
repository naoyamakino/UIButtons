class ButtonController < UIViewController
  def viewDidLoad
    super
    self.title = "Button"
    self.view.backgroundColor = UIColor.whiteColor
    @button = buttonLayout
    @button.frame = [[90,150],[200,37]]
    self.view.addSubview @button
    @button = buttonLayout
    @button.frame = [[90,300],[200,37]]
    self.view.addSubview @button
  end

  def buttonLayout
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle("Press Me!", forState:UIControlStateNormal)
    button.setTitle("Pressed!", forState:UIControlStateHighlighted)
    image = UIImage.imageNamed('resizableButton.png').resizableImageWithCapInsets(UIEdgeInsetsMake(17,5,17,5))
    highlightedImage = UIImage.imageNamed('resizableButtonHighlighted.png').resizableImageWithCapInsets(UIEdgeInsetsMake(17,5,17,5))

    button.setBackgroundImage(image, forState: UIControlStateNormal)
    button.setBackgroundImage(highlightedImage, forState: UIControlStateHighlighted)
    button.addTarget(self, action:'buttonIsPressed', forControlEvents:UIControlEventTouchDown)
    button.addTarget(self, action:'buttonIsTapped', forControlEvents:UIControlEventTouchUpInside)
    button
  end

  def buttonIsPressed
    NSLog("Button was pressed down")
  end

  def buttonIsTapped
    NSLog("Button was tapped")
  end
end
