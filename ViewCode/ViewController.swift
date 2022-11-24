//
//  ViewController.swift
//  ViewCode
//
//  Created by Suh on 22/11/22.
//

import UIKit

class ViewController: UIViewController {

    let screen = ViewControllerScreen()

    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

