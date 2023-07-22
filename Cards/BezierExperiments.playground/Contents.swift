//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        createBeizer(on: view)
    }
    
    private func createBeizer(on view: UIView) {
        let shapelayer = CAShapeLayer()
        view.layer.addSublayer(shapelayer)
        shapelayer.strokeColor = UIColor.gray.cgColor
        shapelayer.lineWidth = 5
        
        shapelayer.fillColor = UIColor.green.cgColor
        
//        shapelayer.path = getPath().cgPath
//        shapelayer.path = getRect().cgPath
//        shapelayer.path = getArc().cgPath
        shapelayer.path = getShape().cgPath
        
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
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: CGSize(width: 30, height: 0))
        return path
    }
    
    private func getArc() -> UIBezierPath {
        let centerPoint = CGPoint(x: 200, y: 200)
        let path = UIBezierPath(arcCenter: centerPoint,
                                radius: 150,
                                startAngle: .pi/5,
                                endAngle: .pi,
                                clockwise: true)
        return path
    }
    
    private func getShape() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
        path.addArc(withCenter: CGPoint(x: 150, y: 100),
                    radius: 50,
                    startAngle: .pi,
                    endAngle: 0,
                    clockwise: true)
        path.addLine(to: CGPoint(x: 220, y: 100))
        path.addArc(withCenter: CGPoint(x: 220, y: 150),
                    radius: 50,
                    startAngle: .pi * 3/2,
                    endAngle: .pi / 2,
                    clockwise: true)
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 200, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 200))
        path.addLine(to: CGPoint(x: 80, y: 200))
        path.addArc(withCenter: CGPoint(x: 80, y: 150),
                    radius: 50,
                    startAngle: .pi/2, endAngle: .pi*3/2,
                    clockwise: true)
        path.close()
        return path
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
