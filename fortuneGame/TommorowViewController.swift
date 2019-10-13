//
//  TommorowViewController.swift
//  fortuneGame
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class TommorowViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var fukidashi: UIImageView!
    @IBOutlet weak var nicknameLabel: UITextField!
    @IBOutlet weak var animalLabel: UITextField!
    
    var nickname: String = ""
    var pickerView: UIPickerView = UIPickerView()
    let animalList = ["うさぎ", "それ以外"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animalList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animalList[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.animalLabel.text = animalList[row]
    }

    func cancel() {
        self.animalLabel.text = ""
        self.animalLabel.endEditing(true)
    }

    @objc func done() {
        self.animalLabel.endEditing(true)
    }

    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    @IBAction func fortuneButton() {
        self.nickname = nicknameLabel.text!
        self.performSegue(withIdentifier: "toResult", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.sendSubviewToBack(fukidashi)
        
        pickerView.delegate = self
        pickerView.dataSource = self

        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        toolbar.setItems([spacelItem, doneItem], animated: true)
        
        self.animalLabel.inputView = pickerView
        self.animalLabel.inputAccessoryView = toolbar
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
