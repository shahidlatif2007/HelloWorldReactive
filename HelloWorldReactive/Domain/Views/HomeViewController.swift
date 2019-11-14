//
//  ViewController.swift
//  HelloWorldReactive
//
//  Created by Shahid Latif on 14/11/2019.
//  Copyright © 2019 Shahid Latif. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar:UISearchBar!
    @IBOutlet weak var countriesTableView:UITableView!
    
    /*
     * The whole point of a dispose bag is to dispose the observables it contains on destruction.
     */
    let disposeBag = DisposeBag()
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*
         * This is first reactive example.
         * In this example lets work on UISearchBar with reactive.
         */
        
        searchBar
            .rx.text // We need to oberve the text changes in Search Bar.
            .orEmpty // Make it non-optional
            .subscribe(onNext: { [weak self] query in
                self?.viewModel.shownCities = self?.viewModel.cities.filter({$0.hasPrefix(query)})
                self?.countriesTableView.reloadData()
            })
            .disposed(by: disposeBag)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.shownCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        let country = viewModel.shownCities[indexPath.row]
        cell.countryNameLabel.text = country
        return cell
    }
}

