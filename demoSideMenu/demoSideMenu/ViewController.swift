//
//  ViewController.swift
//  demoSideMenu
//
//  Created by vishal on 10/12/17.
//  Copyright © 2017 vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SideMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        SideMenu.addTarget(self.revealViewController(), action: #selector(self.revealViewController().revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func xyz(_ abc:String) -> Void {
        
    }

    @IBAction func SideMenuButtonTap(_ sender: UIButton) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

