//
//  ViewController.swift
//  liveGif
//
//  Created by Shinan Liu on 3/21/19.
//  Copyright © 2019 Shinan Liu. All rights reserved.
//
import UIKit

class mainViewController: UIViewController {
    
    private let loginContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//    private let unameTxtField:UITextField = {
//        let txtField = UITextField()
//        txtField.backgroundColor = .white
//        txtField.borderStyle = .roundedRect
//        txtField.translatesAutoresizingMaskIntoConstraints = false
//        return txtField
//    }()
//    private let pwordTxtField: UITextField = {
//        let txtField = UITextField()
//        txtField.borderStyle = .roundedRect
//        txtField.translatesAutoresizingMaskIntoConstraints = false
//        return txtField
//    }()
    
    let btn1: UIButton = {
        let btn = UIButton(type:.system)
        btn.backgroundColor = .lightGray
        btn.setTitle("press me", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return btn
    }()
    @objc func buttonAction(_ sender:UIButton)
    {
        print("Button tapped")
        let vc = ViewController() //your view controller
        self.show(vc, sender: true)
    }
    
    func setUpAutoLayout() {
//        loginContentView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
//        loginContentView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
//        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3 - 20).isActive = true
//        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//        unameTxtField.topAnchor.constraint(equalTo:loginContentView.topAnchor, constant:40).isActive = true
//
//        unameTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
//        unameTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
//        unameTxtField.heightAnchor.constraint(equalToConstant:50).isActive = true
//
//        pwordTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
//        pwordTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
//        pwordTxtField.topAnchor.constraint(equalTo:unameTxtField.bottomAnchor, constant:20).isActive = true
//        pwordTxtField.heightAnchor.constraint(equalToConstant:50).isActive = true
//
//
//
        let margins = view.layoutMarginsGuide
        btn1.translatesAutoresizingMaskIntoConstraints = false;
        
        btn1.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -50).isActive = true
        btn1.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        btn1.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        
     
        view.addSubview(btn1)
        setUpAutoLayout()
    }
    
    
}
