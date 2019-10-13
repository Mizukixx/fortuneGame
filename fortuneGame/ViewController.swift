//
//  ViewController.swift
//  fortuneGame
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usapiComment: UILabel!
    @IBAction func fortuneTommorow() {
        self.performSegue(withIdentifier: "toFortuneTommorow", sender: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = titleLabel.font.withSize(20)
        usapiComment.font = usapiComment.font.withSize(15
        )
        // Do any additional setup after loading the view.
    }


}

