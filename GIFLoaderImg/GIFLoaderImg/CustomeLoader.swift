//
//  CustomeLoader.swift
//  GIFLoaderImg
//
//  Created by Admin on 24/12/18.
//  Copyright © 2018 VISHAL. All rights reserved.
//

import Foundation
import UIKit
class CustomeLoader: UIView {
    
     static let instance = CustomeLoader()
    
    var viewColor: UIColor = .black
    var setAlpha:CGFloat = 0.2
    var gifName: String = "loader"
   
    lazy var transparentView: UIView = {
        let transparentView = UIView(frame: UIScreen.main.bounds)
        transparentView.backgroundColor = viewColor.withAlphaComponent(setAlpha)
        return transparentView
    }()
    
    lazy var gifImage: UIImageView = {
        let gifImage:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 60))
        gifImage.contentMode = .scaleAspectFill
        gifImage.center = transparentView.center
        gifImage.isUserInteractionEnabled = false
        let imageURL = UIImage.gifImageWithName(gifName)
        gifImage.image = imageURL
        return gifImage
    }()
    
    func showLoader() {
        self.addSubview(transparentView)
        self.transparentView.addSubview(gifImage)
        self.transparentView.bringSubviewToFront(self.gifImage)
        UIApplication.shared.keyWindow?.addSubview(transparentView)
    }
    
    func hideLoader(){
        self.transparentView.removeFromSuperview()
    }
}
