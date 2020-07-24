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
    
    
    //MARK:- Properties
    static let apiHandlerInstance = APIHandler()
    weak var vc : ViewController?
  
    var responseResult = String()
    var arrayOfCharecter = [String]()
    let url = "https://bongobd.com/disclaimer/get"
    
    
    //MARK:- Handlers
    
    func getDataFromApi(){
        
    guard let url = URL(string: url)else{return}
       
        let header : HTTPHeaders = [.accept("text/html")]
        
        AF.request(url,headers: header).responseString { (response) in
            
            if response.error != nil{
                return
                
            }else{
                guard let result = response.value else{return}
                self.responseResult = result
               print(self.responseResult)
                
                
               //Print the last charecter
                
                guard let lastCharecter = self.responseResult.last else{return}
               // print("Print The Last Charecter : \(lastCharecter)")
                
                //Print Every 10th Charecter
                
                var count = self.responseResult.count
                var index = 9
           
                while(count>9){
                    
                    let char = self.responseResult.stringAt(index)
                    self.arrayOfCharecter.append(char)
                    index = index + 10
                    count = count - 10
                    
                    
                }
                
                //Print the count of every word
                
                let words = self.responseResult.split{$0.isLetter}
                
                
                
                //Showing in the TextView
                
                var text =  ""
                
                for i in 0..<self.arrayOfCharecter.count{
                    text += "\(self.arrayOfCharecter[i])  "
                }
                
                
                self.vc?.myTextView.text = "The last charecter:\n \(lastCharecter)\n Every 10th Charecter:\n \(text)\n The count of every word: \(words.count)"
                
                
                
                
               
                
            }
            
            
            
        }
    
        
        
        
    }
    
    

    
    
    
    
    
}
extension String{
    
    func stringAt(_ i :Int ) -> String{
        
        return String(Array(self)[i])
    }
    
}
