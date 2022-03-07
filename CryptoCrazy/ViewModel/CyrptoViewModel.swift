//
//  CyrptoViewModel.swift
//  CryptoCrazy
//
//  Created by ferhatiltas on 7.03.2022.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrencyModel]
    
    
}

extension CryptoListViewModel{
    func numberOfRowsInSection() -> Int{
        return self.cryptoCurrencyList.count
    }
    func cryptoAtIndex(_ index : Int) -> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency : crypto)
    }
}

struct CryptoViewModel{
    let cryptoCurrency : CryptoCurrencyModel
    
    var name : String{
        return self.cryptoCurrency.currency
    }
    var pricy : String{
        return self.cryptoCurrency.price
    }
}

