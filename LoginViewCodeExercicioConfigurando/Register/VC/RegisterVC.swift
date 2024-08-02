//
//  RegisterVC.swift
//  LoginViewCodeExercicioConfigurando
//
//  Created by Higor  Lo Castro on 02/08/24.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
}
