import UIKit
import SpriteKit

class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        let node = SKShapeNode(circleOfRadius: 8)

        node.fillColor = randomColor()
        node.position = touch.location(in: self)
        addChild(node)
    }
    
    // returns a random RGB color and alpha
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.0 ... 1.0)
        let green = CGFloat.random(in: 0.0 ... 1.0)
        let blue = CGFloat.random(in: 0.0 ... 1.0)
        let alpha = CGFloat.random(in: 0.5 ... 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
