//
//  QRScannerVC.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 20/06/2023.
//

//
//  Due to the short life of Swift, some elements of Swift have not yet been converted into SwiftUI usable functions and therefore UIKit must be used.
//  This file acts as a 'bridge'between UIKit and SwiftUI, allowing for the Camera to be accessed by the application.
//


import UIKit
import AVFoundation

enum CameraError: String {
    case InvalidDeviceInput = "This device is not suitable for scanning a QR code"
    case InvalidScanValue = "Object scanned is not of type QR"
}

protocol QRScannerVCDelegate: AnyObject {
    func didFind(qrCode: String)
    func didSurface(error: CameraError)
}

final class QRScannerVC: UIViewController {
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?
    weak var scannerDelegate: QRScannerVCDelegate?
    
    init(scannerDelegate: QRScannerVCDelegate) {
        super.init(nibName: nil, bundle: nil)
        self.scannerDelegate = scannerDelegate
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented") } //Required by UIKit incase called by Storyboard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupQRScannerSession()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard let previewLayer = previewLayer else { //this occurs when the preview layer is not ready
            scannerDelegate?.didSurface(error: .InvalidDeviceInput)
            return
        }
        
        previewLayer.frame = view.layer.bounds
    }
    private func setupQRScannerSession() {
        // !! ERROR HANDLING !! //
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { //this function checks that the device running the application has a working camera
            scannerDelegate?.didSurface(error: .InvalidDeviceInput)
            return
        }
        
        let videoInput: AVCaptureDeviceInput
        do { //try catch to ensure that the videoInput variable can be set to the videoCaptureDevice (if present) from the previous function.
            try videoInput = AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            scannerDelegate?.didSurface(error: .InvalidDeviceInput)
            return
        }
        
        if captureSession.canAddInput(videoInput) { //if else block to ensure the videoInput device can be added to the capture session as an input method.
            captureSession.addInput(videoInput)
        } else {
            scannerDelegate?.didSurface(error: .InvalidDeviceInput)
            return
        }
        
        let metaDataOutput = AVCaptureMetadataOutput()
        if captureSession.canAddOutput(metaDataOutput) { //if else block to ensure the metaDataOutput can be added to the capture session output.
            captureSession.addOutput(metaDataOutput)
            metaDataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metaDataOutput.metadataObjectTypes = [.qr] //defines that the metaDataOutput should be looking for QR codes
        } else {
            scannerDelegate?.didSurface(error: .InvalidDeviceInput)
            return
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer!.videoGravity = .resizeAspectFill //fill to the view, but keeping aspect ratio of input camera.
        view.layer.addSublayer(previewLayer!)
        
        captureSession.startRunning() 
    }
}

extension QRScannerVC: AVCaptureMetadataOutputObjectsDelegate {
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        guard let object = metadataObjects.first else { //ensures the object is the first object in the metaDataObjects array
            scannerDelegate?.didSurface(error: .InvalidScanValue)
            return
        }
        
        guard let machineReadableObject = object as? AVMetadataMachineReadableCodeObject else { //checks the object is a machine readable object
            scannerDelegate?.didSurface(error: .InvalidScanValue)
            return
        }
        
        guard let qrCode = machineReadableObject.stringValue else {
            scannerDelegate?.didSurface(error: .InvalidScanValue)
            return
        }
        
        scannerDelegate?.didFind(qrCode: qrCode) //sends the QR code to the scannerDelegate which communicates to SwiftUI
    }
}
