//
//  ViewController.swift
//  HolaMundo
//
//  Created by Dylan Cipagauta on 20/03/17.
//  Copyright © 2017 Dylan Cipagauta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    @IBOutlet weak var TextField: UITextField!
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func BotonPresionado(_ sender: UIButton) {
        
        /*let msj: UIAlertController = UIAlertController(title: "Hola!", message: "¡Soy una alerta!",preferredStyle: .alert) // creo la alerta
        
        let ok: UIAlertAction = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        
        msj.addAction(ok)
        
        present(msj, animated: true, completion: nil)*/
        
        let texto = UInt32(TextField.text!)
        
        if texto == nil {
            label.text = "Ingresa un Numero"
        }
        else{
           label.text = "\(arc4random_uniform(UInt32(texto!)))"
        }
        
        
        
        
        
        
        
        
        TextField.resignFirstResponder()
        
        //textBox.resignFirstResponder()
        
    }
    
    
    
    
  
    
    

}

