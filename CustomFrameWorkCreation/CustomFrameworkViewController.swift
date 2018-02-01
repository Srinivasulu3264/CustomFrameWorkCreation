//
//  CustomFrameworkViewController.swift
//  CustomFrameWorkCreation
//
//  Created by Vmoksha on 01/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit

public class CustomFrameworkViewController: UIViewController {

    var customFrameWorkVC = UIViewController()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func openCustomFrameWork(viewController: UIViewController){
        
        customFrameWorkVC = viewController
        
        let mainView = UIView(frame:CGRect(x:0 , y:0, width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height))
        mainView.backgroundColor = .white
        viewController.view.addSubview(mainView)
        
        let label = UILabel(frame: CGRect(x: 80, y:120 , width:250, height:40))
        label.text = "Welcome to FrameWork"
        label.backgroundColor = .gray
        label.textAlignment = .center
        mainView.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 120, y:200 , width:150, height:40))
        button.backgroundColor = .blue
        button.setTitle("Click Here", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        mainView.addSubview(button)
    }
    
    @objc func buttonAction ()
    {
        let alertController = UIAlertController(title: "Success" , message: "You are successfully Opened the FrameWork" , preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK" , style:.default , handler:{ (action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        let cancelAction = UIAlertAction(title:"Cancel" , style:.destructive , handler:{(action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        customFrameWorkVC.present(alertController, animated: true, completion: nil)
    }
    
}
