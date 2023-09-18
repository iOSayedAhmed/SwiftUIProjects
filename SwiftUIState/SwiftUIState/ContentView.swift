//
//  ContentView.swift
//  SwiftUIState
//
//  Created by iOSayed on 16/09/2023.
//

import SwiftUI

struct ContentView: View {

   @State private var isPlaying = true
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    
    var body: some View {
        HStack {
//            Button {
//
//                isPlaying.toggle()
//
//            } label: {
//                Image(systemName: isPlaying ?  "stop.circle.fill" : "play.circle.fill")
//                    .font(.system(size: 150))
//                    .foregroundColor(isPlaying ? .red : .green)
//            }
            VStack {
                Text("\(counter1 + counter2 + counter3)")
                    .font(.system(size: 100,weight: .bold,design: .rounded))
                    .padding(.bottom)
                HStack {
                    CounterButton(counter: $counter1, color: .red)
                    CounterButton(counter: $counter2, color: .cyan)
                    CounterButton(counter: $counter3, color: .green)
                    
                }
                
            }
            
        }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
