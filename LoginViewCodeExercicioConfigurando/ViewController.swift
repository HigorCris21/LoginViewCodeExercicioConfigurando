//
//  ViewController.swift
//  LoginViewCodeExercicioConfigurando
//
//  Created by Higor  Lo Castro on 04/06/24.
//

import UIKit

//O SceneDelegate é responsável pelo que é exibido na tela, e com ele é possível manipular e gerenciar a forma como o aplicativo é exibido.

class ViewController: UIViewController {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    
    // Esta função é chamada uma vez que a view foi carregada na memória/
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        self.view.addSubview(self.loginLabel)
        self.setupConstraints()
    }
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    // Esta função é chamada pouco antes da view aparecer na tela
    override func viewWillAppear(_ animated: Bool) {
        
        // Oculta a barra de navegação, se houver uma presente
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

