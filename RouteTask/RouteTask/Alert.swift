//
//  Alert.swift
//  RouteTask
//
//  Created by Вадим Ивлюшкин on 19.12.2021.
//

import UIKit

extension UIViewController {
    
    func alertAddAdress(tittle: String, placeholder: String, complectionHadler: @escaping (String) -> Void) {
        let alertControloller = UIAlertController(title: tittle, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let tfText = alertControloller.textFields?.first
            guard let text = tfText?.text else { return }
            complectionHadler(text)
        }
        
        alertControloller.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { _ in
        }
    
        alertControloller.addAction(alertOk)
        alertControloller.addAction(alertCancel)
        
        present(alertControloller, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default)
   
        alertController.addAction(alertOk)
        
        present(alertController, animated: true, completion: nil)
    }
}
