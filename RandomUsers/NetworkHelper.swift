//
//  NetwokHelper.swift
//  RandomUsers
//
//  Created by Maryam Fekri on 2018-05-22.
//  Copyright © 2018 EtienneMartin. All rights reserved.
//

import Foundation
import Alamofire

class UserProvider {
    
    static func getUsers (url: String, completionHanlder: @escaping ([User]?) -> Void) {
        
        Alamofire.request(url).responseJSON { (response) in
            
            if let data = response.data {
                do {
                    let decoder = JSONDecoder()
                    let results = try decoder.decode(Results.self, from: data)
                    print("response \(response)")
                    var users = [User]()
                    for responseUser in results.results {
                        users.append(User(responseUser: responseUser))
                    }
                    completionHanlder(users)
                } catch {}
            }
            completionHanlder(nil)
        }
    }
}
