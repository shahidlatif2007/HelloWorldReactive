//
//  HomeViewModel.swift
//  HelloWorldReactive
//
//  Created by Shahid Latif on 14/11/2019.
//  Copyright © 2019 Shahid Latif. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class HomeViewModel {
    var cities = ["Pakistan", "UAE", "Saudia", "Germany", "Oman"]
    
    var shownCities:BehaviorRelay<[String]> = BehaviorRelay(value: [])
    
    init() {
        shownCities.accept(cities)
    }
}
