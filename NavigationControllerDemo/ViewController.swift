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
        
        print("viewDidLoad \(self.countLabel.text!)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear \(self.countLabel.text!)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear \(self.countLabel.text!)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear \(self.countLabel.text!)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear \(self.countLabel.text!)")
    }
    
    
    @IBAction func pushAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! ViewController

        self.navigationController?.pushViewController(vc, animated: true)
        
        // self.present(vc, animated: true)
    }
    
    
    deinit {
        print("ARC has deinit ViewController \(self.countLabel.text!)")
    }

}

