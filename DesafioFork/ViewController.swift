//
//  ViewController.swift
//  DesafioFork
//
//  Created by Calebe Nunes Pastor on 15/01/18.
//  Copyright © 2018 Calebe Nunes Pastor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let toque = UITapGestureRecognizer(target: self, action: #selector(showMensage))
        view.addGestureRecognizer(toque)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Methods
    func mensage() -> String {
        let agora = Date()
        guard let meioDia = Calendar.current.date(bySettingHour: 12, minute: 00, second: 00, of: agora) else { return "" }
        guard let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 00, second: 00, of: agora) else { return "" }
        
        if agora >= meioDia && agora <= seisHoras {
            return "Boa Tarde.."
        } else if agora >= seisHoras {
            return "Boa Noite..."
        } else {
            return "Bom Dia..."
        }
    }
    
    @objc func showMensage() {
        let alerta = UIAlertController.init(title: nil, message: mensage(), preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alerta, animated: true, completion: nil)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

