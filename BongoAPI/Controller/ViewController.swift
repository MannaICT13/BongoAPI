//
//  ViewController.swift
//  BongoAPI
//
//  Created by Md Khaled Hasan Manna on 25/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Properties
    
    @IBOutlet weak var myTextView: UITextView!
    
    var result = String()
    //MARK:- Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIHandler.apiHandlerInstance.vc = self
      
        
    }

    
    //MARK:- Handlers
    @IBAction func getBtnAction(_ sender: Any) {
       
         APIHandler.apiHandlerInstance.getDataFromApi()
        
    }
    
}

