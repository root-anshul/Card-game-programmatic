//
//  RulesVC.swift
//  Card_game_programmatic
//
//  Created by anshul on 07/11/23.
//

import UIKit

class RulesVC: UIViewController {

        let titleLable = UILabel()
        let ruleslabel = UILabel()
        let exercise   = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configuretitle()
        configureRules()
        configureExercise()
    }
    
    func configuretitle(){
        view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.text = "Rules"
        titleLable.font = .systemFont(ofSize: 40, weight: .bold)
        titleLable.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRules(){
        view.addSubview(ruleslabel)
        ruleslabel.translatesAutoresizingMaskIntoConstraints = false
        ruleslabel.text = "The value of each card represents the number of exercise you do.\n\n J = 11, Q = 12, K = 13, A = 14 "
        ruleslabel.textAlignment = .center
        ruleslabel.font = .systemFont(ofSize: 19, weight: .semibold)
        ruleslabel.lineBreakMode = .byWordWrapping
        ruleslabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            ruleslabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 25),
            ruleslabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            ruleslabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    func configureExercise(){
        view.addSubview(exercise)
        exercise.translatesAutoresizingMaskIntoConstraints = false
        exercise.text = "♠️ = Push-ups\n\n❤️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exercise.font = .systemFont(ofSize: 19, weight: .semibold)
        exercise.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exercise.topAnchor.constraint(equalTo: ruleslabel.bottomAnchor, constant: 60),
            exercise.widthAnchor.constraint(equalToConstant: 200),
            exercise.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
