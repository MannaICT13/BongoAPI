//
//  BongoAPITests.swift
//  BongoAPITests
//
//  Created by Md Khaled Hasan Manna on 25/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import XCTest
@testable import BongoAPI

class BongoAPITests: XCTestCase {

    var apiHandler : APIHandler!
    
    override func setUp() {
       
    }

    override func tearDown() {
    
    }
    
    

    func test_TappingGetButton(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
        let sut = storyboard.instantiateInitialViewController() as! ViewController
        sut.loadViewIfNeeded()
        
       // XCTAssertNil(sut.myTextView)
        XCTAssertNotNil(sut.myTextView)
       // XCTAssertNil(sut.getBtnOutlet)
        XCTAssertNotNil(sut.getBtnOutlet)
      
       
      
    }
    
    
    
    
    func test_getDataFromApi(){
        
        apiHandler = APIHandler()
       
      //  XCTAssertNil(apiModel.getDataFromApi())
        XCTAssertNotNil(apiHandler.getDataFromApi())
        
        
        
    }
    
    func test_APIHandler_responseResult(){
        apiHandler = APIHandler()
       // XCTAssertNil(apiHandler.responseResult)
        XCTAssertNotNil(apiHandler.responseResult)
        
        
    }
    
    func test_APIHandler_arrayOfCharecter(){
          apiHandler = APIHandler()
       // XCTAssertNil(apiHandler.arrayOfCharecter)
        XCTAssertNotNil(apiHandler.arrayOfCharecter)
        
        
    }
    
    func test_APIHandler_url1(){
        
        apiHandler = APIHandler()
        let url = "https://bongobd"
        let url2 = apiHandler.url
        
        XCTAssertNotEqual(url, url2)
        
        
    }
   
      func test_APIHandler_url2(){
          
          apiHandler = APIHandler()
          
          let url = "https://bongobd.com/disclaimer/get"
          let url2 = apiHandler.url
          
          XCTAssertEqual(url, url2)
          
          
      }
    
  
   
}
