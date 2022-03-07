//
//  Service.swift
//  CryptoCrazy
//
//  Created by ferhatiltas on 6.03.2022.
//

import Foundation

class Service {
    
    func getData(path: URL, complition : @escaping ([CryptoCurrencyModel]?)-> ()) {
        
        URLSession.shared.dataTask(with: path) { data, response, error in
            if let err = error {
                print(err.localizedDescription)
                complition(nil)
            }else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoCurrencyModel].self, from: data)
                
                if cryptoList != nil {
                    complition(cryptoList)
                }
                
            }
            
        }.resume()
        
        
    }
}
