//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        createBeizer(on: view)
        createBeizerTwo(on: view)
    }
    
    private func createBeizer(on view: UIView) {
        let shapelayer = CAShapeLayer()
        view.layer.addSublayer(shapelayer)
        shapelayer.strokeColor = UIColor.gray.cgColor
        shapelayer.lineWidth = 5
        
        shapelayer.fillColor = nil
        
        shapelayer.path = getPath().cgPath
    }
    
    private func createBeizerTwo(on view: UIView) {
        let shapelayer = CAShapeLayer()
        view.layer.addSublayer(shapelayer)
        shapelayer.strokeColor = UIColor.cyan.cgColor
        shapelayer.lineWidth = 5
        
        shapelayer.fillColor = nil
        
        shapelayer.path = getRect().cgPath
    }
    
    private func getPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 150))
        path.close()
        
        path.move(to: CGPoint(x: 50, y: 70))
        path.addLine(to: CGPoint(x: 150, y: 170))
        path.addLine(to: CGPoint(x: 50, y: 170))
        path.close()
        return path
    }
    
    private func getRect() -> UIBezierPath {
        let rect = CGRect(x: 10, y: 10, width: 200, height: 200)
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 30)
        return path
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
