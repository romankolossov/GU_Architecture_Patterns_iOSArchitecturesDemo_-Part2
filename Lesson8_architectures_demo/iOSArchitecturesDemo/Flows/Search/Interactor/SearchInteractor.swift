//
//  SearchInteractor.swift
//  iOSArchitecturesDemo
//
//  Created by Veaceslav Chirita on 20.11.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Alamofire

protocol SearchInteractorInput {
    func requestApss(with query: String, completion: @escaping (Result<[ITunesApp]>) -> Void)
}

class SearchInteractor: SearchInteractorInput {
    private let searchService = ITunesSearchService()
    
    func requestApss(with query: String, completion: @escaping (Result<[ITunesApp]>) -> Void) {
        searchService.getApps(forQuery: query, then: completion)
    }
    
    
}
