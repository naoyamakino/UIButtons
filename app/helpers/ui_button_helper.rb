module UIButtonHelper
  def self.buttonLayout
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
end

