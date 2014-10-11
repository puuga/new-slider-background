//
//  ViewController.swift
//  new slider background
//
//  Created by Siwawes Wongcharoen on 10/11/2557 BE.
//  Copyright (c) 2557 puuga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sdRed:UISlider = UISlider(frame: CGRect(x: 80, y: 40, width: 200, height: 40));
    var sdGreen:UISlider = UISlider(frame: CGRect(x: 80, y: 100, width: 200, height: 40));
    var sdBlue:UISlider = UISlider(frame: CGRect(x: 80, y: 160, width: 200, height: 40));
    
    var ulRVal:UILabel = UILabel(frame: CGRect(x: 300, y: 40, width: 60, height: 40));
    var ulGVal:UILabel = UILabel(frame: CGRect(x: 300, y: 100, width: 60, height: 40));
    var ulBVal:UILabel = UILabel(frame: CGRect(x: 300, y: 160, width: 60, height: 40));
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var ulR:UILabel = UILabel(frame: CGRect(x: 20, y: 40, width: 60, height: 40));
        var ulG:UILabel = UILabel(frame: CGRect(x: 20, y: 100, width: 60, height: 40));
        var ulB:UILabel = UILabel(frame: CGRect(x: 20, y: 160, width: 60, height: 40));
        
        ulR.text = "RED";
        ulR.textColor = UIColor.redColor();
        ulG.text = "GREEN";
        ulG.textColor = UIColor.greenColor();
        ulB.text = "BLUE";
        ulB.textColor = UIColor.blueColor();
        
        bindEventToSlider();
        
        self.view.addSubview(sdRed);
        self.view.addSubview(sdGreen);
        self.view.addSubview(sdBlue);
        
        self.view.addSubview(ulR);
        self.view.addSubview(ulG);
        self.view.addSubview(ulB);
        
        self.view.addSubview(ulRVal);
        self.view.addSubview(ulGVal);
        self.view.addSubview(ulBVal);
        
        sliderValueChanged();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bindEventToSlider() {
        sdRed.addTarget(self, action: "sliderValueChanged", forControlEvents: .ValueChanged);
        sdGreen.addTarget(self, action: "sliderValueChanged", forControlEvents: .ValueChanged);
        sdBlue.addTarget(self, action: "sliderValueChanged", forControlEvents: .ValueChanged);
    }
    
    func sliderValueChanged() {
        var color = UIColor(red: CGFloat(sdRed.value),green: CGFloat(sdGreen.value),blue: CGFloat(sdBlue.value),alpha: 1.0);
        var invColor = UIColor(red: 1-CGFloat(sdRed.value),green: 1-CGFloat(sdGreen.value),blue: 1-CGFloat(sdBlue.value),alpha: 1.0);
        
        self.view.backgroundColor = color
        //self.view.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        
        ulRVal.text = NSString(format: "%.2f", sdRed.value);
        ulRVal.textColor = invColor
        ulGVal.text = NSString(format: "%.2f", sdGreen.value);
        ulGVal.textColor = invColor
        ulBVal.text = NSString(format: "%.2f", sdBlue.value);
        ulBVal.textColor = invColor
    }



}

