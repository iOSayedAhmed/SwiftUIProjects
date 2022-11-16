//
//  ContentView.swift
//  ScrollView
//
//  Created by iOSayed on 28/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false) {
            HStack{
                VStack(alignment: .leading) {
                    Text("monday, aug 20".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.largeTitle , design: .rounded ))
                        .fontWeight(.black)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding([.top,.horizontal])
            .layoutPriority(-100)
            HStack {
                
                CardView(image: "cardImage", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners"
                         , author: "iosayed")
                .frame(width: 300)
                CardView(image: "flutter", category: "SwiftUI", heading: "Building a simple and Edit apps"
                         , author: "iosayed")
                .frame(width: 300)
                CardView(image: "macos", category: "SwiftUI", heading: "Building a Border with Rounded Corners"
                         , author: "iosayed")
                .frame(width: 300)
                CardView(image: "natural", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners"
                         , author: "iosayed")
                .frame(width: 300)
            }
            .layoutPriority(200)
            Spacer()
            
              }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
