//
//  BlurStyleScreen.swift
//  Datapix
//
//  Created by Tadreik Campbell on 9/23/20.
//

import SwiftUI

struct BlurStyleScreen: View {
    
    @ObservedObject var userSettings = UserSettings()
    
    let blurTypes = ["Gaussian Blur", "Box Blur", "Disc Blur",
                      "Motion Blur", "Zoom Blur", "Bokeh Blur"]
    var selectedBlur: String {
        switch userSettings.blurStyle {
            case "CIGaussianBlur":
                return "Gaussian Blur"
            case "CIBoxBlur":
                return "Box Blur"
            case "CIDiscBlur":
                return "Disc Blur"
            case "CIMotionBlur":
                return "Motion Blur"
            case "CIZoomBlur":
                return "Zoom Blur"
            case "CIBokehBlur":
                return "Bokeh Blur"
            default:
                return "Gaussian Blur"
        }
    }
    
    var body: some View {
        VStack {
            RadioButtonGroup(items: blurTypes, selectedId: selectedBlur) { selected in
                switch selected {
                    case "Gaussian Blur":
                        userSettings.blurStyle = "CIGaussianBlur"
                    case "Box Blur":
                        userSettings.blurStyle = "CIBoxBlur"
                    case "Disc Blur":
                        userSettings.blurStyle = "CIDiscBlur"
                    case "Motion Blur":
                        userSettings.blurStyle = "CIMotionBlur"
                    case "Zoom Blur":
                        userSettings.blurStyle = "CIZoomBlur"
                    case "Bokeh Blur":
                        userSettings.blurStyle = "CIBokehBlur"
                    default:
                        userSettings.blurStyle = "CIGaussianBlur"
                }
            }
            Spacer()
        }
        .font(.system(size: 17, weight: .regular, design: .default))
        .padding()
        .navigationBarTitle("Blur Style", displayMode: .inline)
    }
    
}
