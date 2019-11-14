//
//  HomeViewModel.swift
//  HelloWorldReactive
//
//  Created by Shahid Latif on 14/11/2019.
//  Copyright © 2019 Shahid Latif. All rights reserved.
//

import Foundation
import RxSwift

class HomeViewModel {
    var cities:[String]!
    var shownCities:[String]!
    init() {
        cities = ["Pakistan", "UAE", "Saudia", "Germany", "Oman"]
        shownCities = cities
    }
}
