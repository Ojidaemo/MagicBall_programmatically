//
//  ViewController.swift
//  MagicBall_code
//
//  Created by Vitali Martsinovich on 2023-01-21.
//

import UIKit

class ViewController: UIViewController {
    
    private let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    private lazy var backgroundView: UIImageView = {

        let background = UIImageView()
        background.image = #imageLiteral(resourceName: "Space starry sky phone wallpaper (1)")
        background.contentMode = .scaleToFill
        background.translatesAutoresizingMaskIntoConstraints = false
        return background

    }()
    
    private lazy var askMeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Ask me something..."
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var ballImageView: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "ball1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private lazy var askButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Ask", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
    }
    
}
    
    extension ViewController {
        
        @objc func buttonTapped(sender: UIButton) {
            ballImageView.image = ballArray.randomElement()
        }

        func setupViewController() {

            addSubviews()
            setConstraints()
        }

        func addSubviews() {

            backgroundView.frame = view.frame
            view.addSubview(backgroundView)

            view.addSubview(askMeLabel)
            view.addSubview(askButton)
            view.addSubview(ballImageView)
        }

        func setConstraints() {

            NSLayoutConstraint.activate([

                askMeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                askMeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                askMeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),

                ballImageView.topAnchor.constraint(equalTo: askMeLabel.bottomAnchor, constant: 100),
                ballImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                askButton.topAnchor.constraint(equalTo: ballImageView.bottomAnchor, constant: 100),
                askButton.widthAnchor.constraint(equalToConstant: 100),
                askButton.heightAnchor.constraint(equalToConstant: 50)

        ])
                }

    }
