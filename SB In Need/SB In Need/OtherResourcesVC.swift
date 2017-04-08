//
//  ViewController.swift
//  SB In Need
//
//  Created by Jared Fitton on 4/7/17.
//  Copyright © 2017 JaredFitton. All rights reserved.
//

import UIKit

class OtherResourcesVC: UIViewController {
    @IBOutlet weak var domesticAbuse: UIButton!
    @IBOutlet weak var sobrietyHelp: UIButton!
    @IBOutlet weak var legalHelp: UIButton!
    @IBOutlet weak var employment: UIButton!
    @IBOutlet weak var LTHousing: UIButton!
    @IBOutlet weak var SeniorHelp: UIButton!
    @IBOutlet weak var ChildCare: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonsTapped(_ sender: UIButton) {
        let background = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        background.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.5)
        self.view.addSubview(background)
        
        let scrollView = UIScrollView(frame: CGRect(x: 25, y: 25, width: self.view.frame.width-50, height: self.view.frame.height - 100))
        scrollView.backgroundColor = UIColor.white
        self.view.addSubview(scrollView)
        
        let closeButton = UIButton(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        closeButton.setTitleColor(.black, for: .normal)
        closeButton.setTitle("close", for: .normal)
        
        scrollView.addSubview(closeButton)
        
    }

}

