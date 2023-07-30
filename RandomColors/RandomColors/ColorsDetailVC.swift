//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Arkadiusz Plumbaum on 30/07/2023.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue

    }
    

}
