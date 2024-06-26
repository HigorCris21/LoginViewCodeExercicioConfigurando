//
//  ViewController.swift
//  LoginViewCodeExercicioConfigurando
//
//  Created by Higor  Lo Castro on 04/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    var loginScreen: LoginScreen?

    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    // Esta função é chamada uma vez que a view foi carregada na memória/
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.configTextFieldDelegate(delegate: self)
 
    }
    
    
    // Esta função é chamada pouco antes da view aparecer na tela
    override func viewWillAppear(_ animated: Bool) {
        // Oculta a barra de navegação, se houver uma presente
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}


extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("textFieldDidEndEditing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        
        return true
    }

}

