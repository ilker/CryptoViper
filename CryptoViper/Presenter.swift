//
//  Presenter.swift
//  CryptoViper
//
//  Created by ILKER on 31.08.2022.
//

import Foundation

enum NetworkError: Error {
    case NewtorkFiled
    case ParsingFailed
}

protocol AnyPresenter {
    var router: AnyRouter? {get set}
    var interactor: AnyInteractor? {get set}
    var view: AnyView? {get set}
    
    func interactorDidDownloadCrypto(result: Result<[Crypto],Error>)
}

class CryptoPresenter: AnyPresenter {
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let cryptos):
            //view.update
            print("update")
        case .failure(let error):
            //view.update error
            print("error")
        }
    }
    
    
}
