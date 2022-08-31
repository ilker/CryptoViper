//
//  Router.swift
//  CryptoViper
//
//  Created by ILKER on 31.08.2022.
//

import Foundation

protocol AnyRouter {
    static func startExecution() -> AnyRouter
}

class CryptoRouter: AnyRouter {
    
    
    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        
        return router
    }
    
    
    
    
}
