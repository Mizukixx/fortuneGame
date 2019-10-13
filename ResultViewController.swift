//
//  ResultViewController.swift
//  fortuneGame
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    var resultList = ["大吉","中吉","小吉","凶"]
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultList[Int(arc4random_uniform(UInt32(resultList.count)))]
        
        if resultLabel.text == "大吉" {
            commentLabel.text! = "にんじんのおかげね"
        } else if resultLabel.text == "中吉" {
            commentLabel.text! = "ラッキー動物はうさぎよ"
        } else if resultLabel.text == "小吉" {
            commentLabel.text! = "もふもふな結果ね"
        } else {
            commentLabel.text! = "小屋でゆっくりしよ"
        }
        
        resultLabel.font = resultLabel.font.withSize(60)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
