//
//  ViewController.swift
//  vision-app-dev
//
//  Created by Stephen Reyes on 10/29/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {

    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var identificationLbl: UIView!
    @IBOutlet weak var confidenceLbl: UILabel!
    @IBOutlet weak var captureImageView: RoundedShadowImageView!
    @IBOutlet weak var roundedLblView: RoundedShadowView!
    @IBOutlet weak var flashBtn: RoundedShadowButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

