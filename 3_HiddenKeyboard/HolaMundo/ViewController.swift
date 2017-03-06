//
//  ViewController.swift
//  HolaMundo
//
//  Created by Aldo Contreras on 3/6/17.
//  Copyright © 2017 Aldo Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelHolaMundo: UILabel!
    
    @IBAction func presionarButton(_ sender: Any) {
        
        labelHolaMundo.text = "Hola: " + textField.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Funcion para esconder el teclado cuando tocamos la pantalla
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // Funcion para esconder el teclado cuando presionamos return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
}

