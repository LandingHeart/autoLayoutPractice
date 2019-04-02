//
//  ViewController.swift
//  liveGif
//
//  Created by Shinan Liu on 3/21/19.
//  Copyright © 2019 Shinan Liu. All rights reserved.
//
import UIKit

class mainViewController: UIViewController {
    
    private let ContentView:UIView = {
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
        
        
        view.addSubview(ContentView)
        view.addSubview(btn1)
        setUpAutoLayout()
    }
    
    
}
