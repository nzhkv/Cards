//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
       setupViews()
    }
    
    private func setupViews() {
        self.view = getRootView()
        let redView = getRedView()
        let greenView = getGreenView()
        
        set(view: greenView, toCenterOfView: redView)
//        greenView.center = redView.center
        self.view.addSubview(redView)
        self.view.addSubview(getPinkView())
        redView.addSubview(greenView)
       

    }
    
    private func getRootView() -> UIView {
        let view = UIView()
        view.backgroundColor = .cyan
        return view
    }
    
    private func getRedView() -> UIView {
        let view = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        view.backgroundColor = .red
        view.clipsToBounds = true
        return view
    }
    
    private func getGreenView() -> UIView {
        let view = UIView(frame: CGRect(x: 10, y: 10, width: 180, height: 180))
        view.backgroundColor = .green
        return view
    }
    
    private func getPinkView() -> UIView {
        let view = UIView(frame: CGRect(x: 50, y: 300, width: 100, height: 100))
        view.backgroundColor = .systemPink
        view.layer.borderWidth = 5
        view.layer.borderColor = UIColor.yellow.cgColor
        view.layer.cornerRadius = 10
        view.layer.shadowOpacity = 1
        view.layer.shadowRadius = 20
        view.layer.shadowOffset = CGSize(width: 10, height: 20)
        view.layer.shadowColor = UIColor.white.cgColor

        let layer = CALayer()
        layer.backgroundColor = UIColor.black.cgColor
        layer.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
        layer.cornerRadius = 10
        view.layer.addSublayer(layer)
//        print(view.frame)
//        view.transform = CGAffineTransform(rotationAngle: .pi/4)
//        print(view.frame)
        
//        view.transform = CGAffineTransform(scaleX: 1.5, y: 0.7)
//        view.transform = CGAffineTransform(translationX: 100, y: 5)
        return view
    }
    
    private func set(view moveView: UIView, toCenterOfView baseView: UIView) {
        moveView.center = CGPoint(x: baseView.bounds.midX, y: baseView.bounds.midY)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
