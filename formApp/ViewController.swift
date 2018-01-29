//
//  ViewController.swift
//  formApp
//
//  Created by SUP'Internet 15 on 22/01/2018.
//  Copyright © 2018 SUP'Internet 15. All rights reserved.
//

import UIKit


//Objectif -> UI sans utiliser le StoryBoard


//RAPPEL
//un controller est toujours linké a une view
//generer autogeneration dans une method -> esc

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let label = UILabel() //creer element label flottant
        label.text = "Label"
        
        
        //permet de recuperer la taille de view (toute le screen) et d'ainsi de donner des dimension adapter a nos subview (elemnt ui)
        //ATTENTION ici il faut consider que le label n'est toujours initialiser (car pas ajouter dans la piule des subview)
        //donc valeur en dur pour le calcul a ce niveau la
        label.frame = CGRect(x: (self.view.frame.width / 2) - (200/2) , y: 0, width: 200, height: 100) //dimension + position
        label.backgroundColor = .red
        label.textAlignment = .center
        label.textColor = .white
        
        
        //une view dispose de plusieur sub view qui se superpose avec chacune un element ui
        // -> view c'est le container et subview petit container dans le grand
        //ainsi on peut acceder a toute les views depuis la view principal
        //self.view est accessible depuis un controller
        self.view.addSubview(label)
        */
        
        
        
        //Pour faire comme ca sans story board, commencer de bas vers le haut
        
        self.view.backgroundColor = .green
   

        
        let cgu = UILabel()
        cgu.text = "En m'inscrivant j'accepte les Conditions les conditions de Politique de SHARE your tiME"
        //y correspondant toute la view PUIS - 50 pour remonter (si on fait + on sort de tous)
        cgu.frame = CGRect(x: (self.view.frame.width / 2) - (200/2), y: (self.view.frame.height)-50, width: 200, height: 50)
        cgu.numberOfLines = 2
        cgu.textColor = .white
        cgu.lineBreakMode = .byWordWrapping
        cgu.font = cgu.font.withSize(9)
        
        
        let accept = UIButton()
        accept.setTitle("S'inscrire",for: .normal)
        accept.frame = CGRect(x: 10, y: (cgu.frame.origin.y) - 35, width: self.view.frame.width - 20, height: 45)
        accept.backgroundColor = UIColor.withAlphaComponent(.black)(0.8)
        accept.contentHorizontalAlignment = .center
        accept.layer.cornerRadius = 10.0


        
        let passwordConfirmed = UITextField()
        passwordConfirmed.isSecureTextEntry = true
        passwordConfirmed.backgroundColor = UIColor(white: 1, alpha: 0.8)
        passwordConfirmed.frame = CGRect(x: 10, y: (accept.frame.origin.y) - 75, width: self.view.frame.width - 20, height: 45)
        passwordConfirmed.placeholder = "Please confirmed your password"
        passwordConfirmed.layer.cornerRadius = 10.0

        
        
        let password = UITextField()
        password.isSecureTextEntry = true
        password.backgroundColor = UIColor(white: 1, alpha: 0.8)
        password.frame = CGRect(x: 10, y: (passwordConfirmed.frame.origin.y) - 75, width: self.view.frame.width - 20, height: 45)
        password.placeholder = "Enter your password"
        password.layer.cornerRadius = 10.0

        
        
        let email = UITextField()
        email.keyboardType = UIKeyboardType.emailAddress
        email.backgroundColor = UIColor(white: 1, alpha: 0.8)
        email.frame = CGRect(x: 10, y: (password.frame.origin.y) - 75, width: self.view.frame.width - 20, height: 45)
        email.placeholder = "Email"
        email.layer.cornerRadius = 10.0

        
        
        let nom = UITextField()
        nom.backgroundColor = UIColor(white: 1, alpha: 0.8)
        nom.frame = CGRect(x: 10, y: (email.frame.origin.y) - 75, width: self.view.frame.width - 20, height: 45)
        nom.placeholder = "Nom"
        nom.layer.cornerRadius = 10.0

        
        let prenom = UITextField()
        prenom.backgroundColor = UIColor(white: 1, alpha: 0.8)
        prenom.frame = CGRect(x: 10, y: (nom.frame.origin.y) - 75, width: self.view.frame.width - 20, height: 45)
        prenom.placeholder = "Prénom"
        prenom.layer.cornerRadius = 10.0
      
        
        
        let imageName = "share.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 10, y: ((prenom.frame.origin.y) / 2) - 100, width: self.view.frame.width - 20, height: 200)
        imageView.contentMode = .scaleAspectFill
        
        
        

        
        
    
        self.view.addSubview(cgu)
        self.view.addSubview(accept)
        self.view.addSubview(passwordConfirmed)
        self.view.addSubview(password)
        self.view.addSubview(email)
        self.view.addSubview(nom)
        self.view.addSubview(prenom)
        self.view.addSubview(imageView)

        
        
    }
    


}



extension UIView {
    func addMarginLeft(left: CGFloat, right: CGFloat, top: CGFloat, bottom: CGFloat){
        self.frame = CGRect(x: self.frame.origin.x + left, y: self.frame.origin.y + top, width: self.frame.width - right, height: self.frame.height - bottom)
    }
    
}

