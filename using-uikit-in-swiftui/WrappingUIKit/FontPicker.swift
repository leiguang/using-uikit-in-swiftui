//
//  FontPicker.swift
//  using-uikit-in-swiftui
//
//  Created by Guang Lei on 2021/4/6.
//

import Foundation
import SwiftUI

struct FontPicker: UIViewControllerRepresentable {
    
    @Binding var font: UIFontDescriptor?
    @Environment(\.presentationMode) var presentationMode

    func makeUIViewController(context: Context) -> UIFontPickerViewController {
        let picker = UIFontPickerViewController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIFontPickerViewController, context: Context) {
        
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

extension FontPicker {
    
    class Coordinator: NSObject, UIFontPickerViewControllerDelegate {
    
        var parent: FontPicker
        
        init(_ parent: FontPicker) {
            self.parent = parent
        }
        
        func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
            parent.font = viewController.selectedFontDescriptor
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
