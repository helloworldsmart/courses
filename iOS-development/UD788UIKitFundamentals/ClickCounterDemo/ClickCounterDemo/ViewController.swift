//
//  ViewController.swift
//  ClickCounterDemo
//
//  Created by Michael on 2017/1/26.
//  Copyright © 2017年 Meow.minithon.teama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width:60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Love Label
        let loveLabel = UILabel()
        loveLabel.frame = CGRect.init(x: 210, y: 150 ,width: 60, height: 60)
        loveLabel.text = "♥️"
        self.view.addSubview(loveLabel)
        
        
        // Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("click", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        self.view.addSubview(button)
        
        // decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect.init(x: 90, y: 250, width: 60, height: 60)
        decrementButton.setTitle("-", for: .normal)
        decrementButton.setTitleColor(.blue, for: .normal)
        self.view.addSubview(decrementButton)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        
        if count > 5 && count < 10 {
            self.view.backgroundColor = UIColor.orange
        } else if count >= 10 {
            self.view.backgroundColor = UIColor.red
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
    
    func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        
        if count > 5 && count < 10 {
            self.view.backgroundColor = UIColor.orange
        } else if count >= 10 {
            self.view.backgroundColor = UIColor.red
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
    
    func togglesColor() {
        
        if count > 5 && count < 10 {
            self.view.backgroundColor = UIColor.orange
        } else if count >= 10 {
            self.view.backgroundColor = UIColor.red
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }


}

