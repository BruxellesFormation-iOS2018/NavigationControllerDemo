//
//  ViewController.swift
//  NavigationControllerDemo
//
//  Created by Florian Praile on 21/08/2018.
//  Copyright © 2018 Underside. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let count =  self.navigationController?.viewControllers.count{
            self.countLabel.text = "\(count)"
        }else{
            self.countLabel.text = "Not a nav"
        }
    }

    @IBAction func pushAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        // self.present(vc, animated: true)
    }
    

}

