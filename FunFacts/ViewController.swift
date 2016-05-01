//
//  ViewController.swift
//  FunFacts
//
//  Created by Luu Tien Thanh on 4/29/16.
//  Copyright © 2016 Luu Tien Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funcFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        funcFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        //let newColor = UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funcFactLabel.text = factModel.getRandomFact()
    }
    
}

