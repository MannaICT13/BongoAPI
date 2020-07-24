//
//  APIHandler.swift
//  BongoAPI
//
//  Created by Md Khaled Hasan Manna on 25/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import Alamofire
class APIHandler {
    
    static let apiHandlerInstance = APIHandler()
  
    
    func getDataFromApi(){
        
    guard let url = URL(string: "https://bongobd.com/disclaimer/get")else{return}
       
        let header : HTTPHeaders = [.accept("text/html")]
        
        AF.request(url,headers: header).responseString { (response) in
            
            if response.error != nil{
                return
                
            }else{
                guard let result = response.value else{return}
              print(result)
                
            }
            
            
            
        }
    
        
        
        
    }
    
    
    
    
    
}
