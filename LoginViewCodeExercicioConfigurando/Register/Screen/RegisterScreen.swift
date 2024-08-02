//
//  RegisterVC.swift
//  LoginViewCodeExercicioConfigurando
//
//  Created by Higor  Lo Castro on 02/08/24.
//

import UIKit

class RegisterScreen: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
