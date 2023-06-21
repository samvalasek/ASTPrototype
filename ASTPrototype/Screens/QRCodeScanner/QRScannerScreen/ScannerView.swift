//
//  ScannerView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 21/06/2023.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    
    func makeUIViewController(context: Context) -> QRScannerVC {
        QRScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: QRScannerVC, context: Context) {}
    
    final class Coordinator: NSObject, QRScannerVCDelegate {
        func didFind(qrCode: String) {
            print(qrCode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
    }
    func makeCoordinator() -> Coordinator { Coordinator() }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
