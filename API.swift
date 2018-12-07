//
//  Api.swift
//  Giants Task
//
//  Created by A.Rahman on 12/6/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class API: NSObject {
//we create a class func so we won't have to create instance from api

    class func login(email:String,password:String,completion: @escaping (_ error:Error?, _ success:Bool )-> Void){
       
        let url = "http://st.sprints.ws/fitness/public/api/login/"
        let params = [
            "email":email,
            "password":password
        ]
        Alamofire.request(url, method: .post, parameters: params as? [String: Any], encoding: JSONEncoding.default, headers:["Accept":"application/json"]).responseJSON{ response in
            switch response.result
            {
            case.failure(let error):
               completion(error,false)
                print(error)
            case.success(let value):
                print(value)
                let json=JSON(value)
                if let token = json["data"]["token"].string{
                    print ("token : \(token)")
                    helper.saveApiToken(token: token)
                completion(nil,true)
                
                }
            }
        }
        
        
    }
    class func register(name:String,email:String,password:String,confirmPassword:String,completion: @escaping (_ error:Error?, _ success:Bool )-> Void){
        
        let url = "http://st.sprints.ws/fitness/public/api/register"
        let params = [
            "name":name,
            "email":email,
            "password":password
            
        ]
        Alamofire.request(url, method: .post, parameters: params as? [String: Any], encoding: JSONEncoding.default, headers:["Accept":"application/json"]).responseJSON{ response in
            switch response.result
            {
            case.failure(let error):
                completion(error,false)
                print(error)
            case.success(let value):
                print(value)
                let json=JSON(value)
                if let token = json["data"]["token"].string{
                    print ("token : \(token)")
                    helper.saveApiToken(token: token)
                completion(nil,true)
                
                
            }
        }
        
        
    }
}
}
