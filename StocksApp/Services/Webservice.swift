//
//  Webservice.swift
//  StocksApp
//
//  Created by Metin Atalay on 13.02.2022.
//

import Foundation


class Webservice {
    
    func getStocks(completion: @escaping(([Stock]?)-> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            completion(nil)
            return
            
        }
        
       
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return

            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil): completion(stocks)
            
           
        }.resume()
        
    }
    
}
