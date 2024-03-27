//
//  ViewController.swift
//  Sports
//
//  Created by Ali Siddiqui on 3/22/24.
//

import UIKit

class SportsHomeViewController: UIViewController {

    override func loadView() {
        let sportsHomeView = SportsHomeView()
        view = sportsHomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Sports"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.3.sequence"), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "textformat.abc.dottedunderline"), style: .plain, target: self, action: nil)

    }
}

