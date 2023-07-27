//
//  BoardGameController.swift
//  Cards
//
//  Created by Nikolay Zhukov on 26.07.2023.
//

import UIKit

class BoardGameController: UIViewController {
    
    var cardsPairsCounts = 8
    
    lazy var game: Game = getNewGame()
    lazy var startButtonView = getStartButton()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        view.addSubview(startButtonView)
    }
    
    private func getNewGame() -> Game {
        let game = Game()
        game.cardsCount = cardsPairsCounts
        game.generateCards()
        return game
    }

    private func getStartButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y:0, width: 200, height: 50))
        button.center.x = view.center.x
        button.frame.origin.y = UIApplication.safeArea.top
        
        button.setTitle("start", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 10
        
        button.addTarget(nil, action: #selector(startGame), for: .touchUpInside)
//        button.addAction(UIAction(handler: { action in
//            print("asdasdasd")
//        }), for: .touchUpInside)
        
        return button
    }
    
    @objc func startGame(_ sender: UIButton) {
        print("button was pressed")
    }

}
