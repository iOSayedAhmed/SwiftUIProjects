//
//  ContentView.swift
//  SOLID_Principles
//
//  Created by Develop on 05/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        APIService.shared.getData{ res , error in
            print(res)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
