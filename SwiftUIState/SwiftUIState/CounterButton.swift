//
//  CounterButton.swift
//  SwiftUIState
//
//  Created by iOSayed on 16/09/2023.
//

import SwiftUI

struct CounterButton: View {
    
    @Binding  var counter:Int
    var color:Color
    var body: some View {
        Button {
            counter += 1
        } label: {
            
            Circle()
                .frame(width: 100,height: 100)
                .foregroundColor(color)
                .overlay {
                Text("\(counter)")
                        .font(.system(size: 50,weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
        }

    }
}

struct CounterButton_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton(counter: .constant(0), color: .green)
    }
}
