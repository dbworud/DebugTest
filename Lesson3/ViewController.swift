//
//  ViewController.swift
//  Lesson3
//
//  Created by jaekyung you on 2020/12/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countBtn: UIButton!
    
    @IBOutlet weak var countLabel: UITextField!
    
    var clickCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view.addSubview(countBtn)
        countBtn.addTarget(self, action: #selector(btnPressed(_:)), for: .touchUpInside)
    }

    @objc fileprivate func btnPressed(_ sender: UIButton) {
        countLabel.text = labelText()
    }
    
    
    func labelText() -> String {
        clickCounter += 1
        return "Number of clicks: \(clickCounter)"
    }

}

