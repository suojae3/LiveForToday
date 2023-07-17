//
//  AlertController.swift
//  LiveForToday
//
//  Created by ㅣ on 2023/07/17.
//

import UIKit

class Alert: UIViewController {
    
    func showAlert() {
        
        
        let alertController = UIAlertController(title: "Authentication Failed", message: "Please try again.", preferredStyle: .alert)
        
//        let retryAction = UIAlertAction(title: "Retry", style: .default) { _ in
//            self.didTapButton() // 인증버튼 다시누르기
//        }
  
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
//        alertController.addAction(retryAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
        
        //리턴을 여기서 해주고
        //로그인뷰컨에서 리턴을 가지고 present 해준다
        
        
    }
    
}
