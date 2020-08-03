//
//  ViewController.swift
//  Lesson 1 DZ
//
//  Created by Роман Мироненко on 03.08.2020.
//  Copyright © 2020 Роман Мироненко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    
    @IBOutlet weak var passColorBack: UIButton!
    @IBOutlet weak var logColorBack: UIButton!
    @IBOutlet weak var colorLabelText: UIButton!
    
    @IBOutlet weak var logLabel: UILabel!
    
    @IBOutlet weak var passLabel: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logLabel.backgroundColor = UIColor.gray
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func colorButton(_ sender: UIButton) {
       
        
        colorBackground()
        
    }
    
    
    @IBAction func logButton(_ sender: UIButton) {
        
        self.logLabel.text = "Ваш логин: "
        self.alertLog(title: "Логин", message: "Введите логин", style: .alert)
        
    }
    @IBAction func passButton(_ sender: UIButton) {
        
        self.passLabel.text = "Ваш пароль: "
        self.alertPass(title: "Пароль", message: "Введите пароль", style: .alert)
    
    }
    
    
    func alertPass(title: String, message: String, style: UIAlertController.Style) {
        
        let control = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ввести", style: .default) { (act) in
            let text = control.textFields?.first
            self.passLabel.text! += (text?.text)!
        }
        
        control.addTextField { (text) in
            text.isSecureTextEntry = true
        }
        control.addAction(action)
        self.present (control, animated: true, completion: nil)
    }
    
    func alertLog(title: String, message: String, style: UIAlertController.Style) {
        
        let control = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ввести", style: .default){ (act) in
            let text = control.textFields?.first
            self.logLabel.text! += (text?.text)!
        }
        
        control.addTextField(configurationHandler: nil)
        control.addAction(action)
        self.present (control, animated: true, completion: nil)
    }
    func colorBackground() {
        
        logLabel.backgroundColor = getRandomColor()
        view.backgroundColor = getRandomColor()
        colorLabelText.backgroundColor = getRandomColor()
        passLabel.backgroundColor = getRandomColor()
        logColorBack.backgroundColor = getRandomColor()
        passColorBack.backgroundColor = getRandomColor()
        
        
    }
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    
}

