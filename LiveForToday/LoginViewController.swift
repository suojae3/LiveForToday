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
        
        //LAContext 인스턴스 생성 (신체인증 필수 객체)
        let context = LAContext()
        
        //error 처리 변수
        var error: NSError? = nil
        
        // 신체인증 기능 지원하는 디바이스인지 확인하기
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
        
            let reason = "Please authenticate yourself to proceed."

                //기능 지원하는 디바이스일 경우 신체인증 시도
                context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                    
                    // UI와 상호작용하기 위해 메인스레드에서 작업 강제
                    DispatchQueue.main.async {
                        
                        if success {
                            
                            //신체인증 성공하면 다음페이지로 이동하기
                            print("Authentication was successful.")
                            guard let whatVC = self.storyboard?.instantiateViewController(withIdentifier: "WhatViewController") else {return}
                            self.navigationController?.pushViewController(whatVC, animated: true)
                                                
                        } else {
                            
                            // 신체인증 실패할 경우 다시 시도해보라고 alert창 띄우기
                            print("Authentication failed.")
                        
                        }
                    }
                }
            } else {
                
                // 디바이스가 신체기능 지원을 하지 않는다고 alert창 띄우기
                print("Device does not support Face ID / Touch ID.")
            }
    
    }
}
    



   
