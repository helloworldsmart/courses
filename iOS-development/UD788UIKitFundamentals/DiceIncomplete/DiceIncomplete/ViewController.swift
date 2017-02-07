//
//  ViewController.swift
//  DiceIncomplete
//
//  Created by Michael on 2017/2/6.
//  Copyright © 2017年 Meow.minithon.teama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func experiment(_ sender: Any) {
//        let nextController = UIImagePickerController()
//        self.present(nextController, animated: true, completion: nil)
        
//        let image = UIImage()
//        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
//        self.present(controller, animated: true, completion: nil)
        
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "This is a test"
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        controller.addAction(okAction)
        
        self.present(controller, animated: true, completion: nil)
        
    }
    

}

