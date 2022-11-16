//
//  GreadientBackgroundButton.swift
//  SwiftUIButtons
//
//  Created by iOSayed on 16/11/2022.
//

import Foundation
import SwiftUI
struct GreadientBackgroundButtonStyle:ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0,maxWidth: .infinity)
            .padding(.horizontal)
            .foregroundColor(.white)
            .background(LinearGradient(colors: [Color("DarkGreen"),Color("LightGreen")], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal,20)
            .scaleEffect(configuration.isPressed ?  0.5 : 1.0 )
        //            .rotationEffect(configuration.isPressed ? Angle(degrees: 90) : Angle(degrees: 0.0),anchor: .bottom)
        
    }
}
    struct RotateCross:ButtonStyle {
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
//                .frame(minWidth: 0,maxWidth: .infinity)
//                .padding(.horizontal)
//                .foregroundColor(.white)
//                .background(LinearGradient(colors: [Color("DarkGreen"),Color("LightGreen")], startPoint: .leading, endPoint: .trailing))
//                .cornerRadius(40)
//                .padding(.horizontal,20)
                //.scaleEffect(configuration.isPressed ?  0.5 : 1.0 )
                .rotationEffect(configuration.isPressed ? Angle(degrees: 45) : Angle(degrees: 0.0),anchor: .center)
                
        }
    
}
