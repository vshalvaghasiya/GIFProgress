//
//  ViewController.swift
//  GIFLoaderImg
//
//  Created by Admin on 24/12/18.
//  Copyright © 2018 VISHAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: set Custome GIF and Background
        
//        CustomeLoader.instance.gifName = ""
//        CustomeLoader.instance.setAlpha = 0.2
//        CustomeLoader.instance.viewColor = UIColor.black
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        CustomeLoader.instance.hideLoader()
    }
    
    //MARK: Button Click Events
    @IBAction func showLoadeButtonClick(_ sender: UIButton) {
        CustomeLoader.instance.showLoader()
    }
    
    
}

