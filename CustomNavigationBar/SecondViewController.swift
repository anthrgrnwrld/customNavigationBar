//
//  SecondViewController.swift
//  CustomNavigationBar
//
//  Created by Masaki Horimoto on 2016/06/20.
//  Copyright © 2016年 Masaki Horimoto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var isDisplayBar = true
    var isOpaque = true
    var isDefaultColor = true
    
    var defaultColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        defaultColor = UINavigationBar.appearance().tintColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     Navigation Barを隠したり表示したり (with Animation)
    */
    @IBAction func pressButton1(sender: AnyObject) {
        
        if isDisplayBar {

            self.navigationController!.setNavigationBarHidden(true, animated: true)
            
            isDisplayBar = false
            
        } else {
            
            self.navigationController!.setNavigationBarHidden(false, animated: true)
            
            isDisplayBar = true
            
        }
        
    }

    /**
     Navigation Barを透明にしたりしなかったり
     */
    @IBAction func pressButton2(sender: AnyObject) {
        
        if isOpaque {
            
            self.navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
            self.navigationController!.navigationBar.shadowImage = UIImage()
            
            isOpaque = false
            
        } else {
            
            self.navigationController!.navigationBar.setBackgroundImage(nil, forBarMetrics: .Default)
            self.navigationController!.navigationBar.shadowImage = nil
            
            isOpaque = true
            
        }
        
    }
    
    /**
     Navigation BarのTint colorを変更したりしなかったり
    */
    @IBAction func pressButton3(sender: AnyObject) {
        
        if isDefaultColor {
            
            self.navigationController!.navigationBar.tintColor = UIColor.redColor()
            
            isDefaultColor = false
            
        } else {
            
            self.navigationController!.navigationBar.tintColor = defaultColor
            
            isDefaultColor = true
            
        }
        
    }
    
}