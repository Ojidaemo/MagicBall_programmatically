//
//  ViewController.swift
//  MagicBall_code
//
//  Created by Vitali Martsinovich on 2023-01-21.
//

import UIKit

class ViewController: UIViewController {
    
//    let ballArray = [UIImage(named: "ball1"), UIImage(named: "ball2"), UIImage(named: "ball3"), UIImage(named: "ball4"), UIImage(named: "ball5") ]
    
    let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    let askMeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Ask me something..."
        label.textColor = .white
        label.font = .systemFont(ofSize: 35)
        
        return label
        
    }()
    
    let imageView: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "ball1")
        
        return view
        
    }()
    
    var askButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Ask", for: .normal)
        button.backgroundColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        askMeLabel()
        imageView()
        
        
    }
    
    @objc func buttonTapped() {
        imageView.image = ballArray.randomElement()
    }
    
}

extension ViewController {
    func setupViewController() {
        addSubview(<#T##UIView#>)
    }
}
