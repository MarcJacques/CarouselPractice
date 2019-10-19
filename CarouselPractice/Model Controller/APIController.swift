//
//  APIController.swift
//  CarouselPractice
//
//  Created by Marc Jacques on 10/19/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import Foundation

class APIController {
    //How will the data be delivered to us
    var users: [User] = []
    //where are we getting it from
    let baseURL = URL(string: "https://randomuser.me/api/?results=15")!
    
    //not necessary just going to help us manage completetions and errors
    typealias CompletionHandler = (Error?) -> Void
    
    
    //begin function to get user information
    
    func getUsers(completion: @escaping CompletionHandler = { _ in }) {
        //first we need to get in contact with API
        //in this case the baseURL takes us exactly to the exact website where are data is found. If not we would need to append the url path to the baseURL
        URLSession.shared.dataTask(with: baseURL) { (data, response, error) in
            
            //handle error just in case we get an error while trying to connect to the api
            
            if let error = error {
                NSLog("Error while getting user data: \(error)")
            }
            //handle error if we do not get the data
            guard let data = data else {
                NSLog("No data returned from data task.")
                completion(nil)
                return
            }
            //now that we got the data we are going to try to decode the JSON data and put the infor into our model
            do {
                let newUser = try JSONDecoder().decode(UserResult.self
                    , from: data)
                print(newUser)
                self.users = newUser.results
            } catch {
                
                
            }
        }
    }
}
