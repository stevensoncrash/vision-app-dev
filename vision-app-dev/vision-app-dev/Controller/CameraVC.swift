//
//  ViewController.swift
//  vision-app-dev
//
//  Created by Stephen Reyes on 10/29/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//
import UIKit
import AVFoundation

class CameraVC: UIViewController {
    
    var caputureSession: AVCaptureSession!
    var cameraOutput: AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!

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

    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        previewLayer.frame = cameraView.bounds
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        caputureSession = AVCaptureSession()
        caputureSession.sessionPreset = AVCaptureSession.Preset.hd1920x1080
        
        let backCamera = AVCaptureDevice.default(for: AVMediaType.video)
        
        do {
            let input = try AVCaptureDeviceInput(device: backCamera!)
            if caputureSession.canAddInput(input) == true {
                caputureSession.addInput(input)
            }
            cameraOutput = AVCapturePhotoOutput()
            if caputureSession.canAddOutput(cameraOutput) == true {
                caputureSession.addOutput(cameraOutput!)
                
                previewLayer = AVCaptureVideoPreviewLayer(session: caputureSession)
                previewLayer.videoGravity = AVLayerVideoGravity.resizeAspect
                previewLayer.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
                
                cameraView.layer.addSublayer(previewLayer!)
                caputureSession.startRunning()
            }
        } catch {
            debugPrint(error)
        }
    }
}

