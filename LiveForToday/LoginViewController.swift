//
//  LoginViewController.swift
//  LiveForToday
//
//  Created by ㅣ on 2023/07/15.
//



import UIKit
import LocalAuthentication //face id와 지문인식 프레임워크 제공

class LoginViewController: UIViewController {
    
    @IBOutlet weak var authButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        // navigation bar 숨김
        navigationController?.navigationBar.isHidden = false
        
        //버튼 커스터마이징
        AuthButtons.setupButton(authButton)
    }
    
    
    
    @IBAction func authButton(_ sender: Any) {
        
        let context = LAContext()
        var error: NSError? = nil
        
        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
            print("Device does not support Face ID / Touch ID.")
            return
        }

        let reason = "Please authenticate yourself to proceed."
        
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { [weak self] success, authenticationError in
            
            DispatchQueue.main.async {
                
                guard success else {
                    print("Authentication failed.")
                    return
                }

                print("Authentication was successful.")
                
                guard let whatVC = self?.storyboard?.instantiateViewController(withIdentifier: "WhatViewController") else { return }
                self?.navigationController?.pushViewController(whatVC, animated: true)
            }
        }
    }

}
    



   
