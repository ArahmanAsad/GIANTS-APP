//
//  helper.swift
//  Giants Task
//
//  Created by A.Rahman on 12/7/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit

class helper: NSObject {
    
    class func saveApiToken (token:String){
        //savine api token to user default
        let def = UserDefaults.standard
        def.set(token, forKey: "token")
        def.synchronize()
    }
    class func getApiToken() ->String?{
        let def = UserDefaults.standard
        return def.object(forKey: "token") as? String
    }

}
