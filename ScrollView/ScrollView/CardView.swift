//
//  CardView.swift
//  ScrollView
//
//  Created by iOSayed on 28/10/2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("cardImage")
                .resizable()
                .scaledToFit()
            HStack{
                VStack(alignment:.leading){
                    Text("Swiftui".uppercased())
                        .font(.system(.headline))
                        .foregroundColor(.secondary)
                        .padding(.leading,30)
                    Text("Drawing a Border With Rounded Cornors")
                        .font(.system(.title2 , design: .rounded , weight: .heavy))
                        .foregroundColor(.primary)
                        .padding(.leading,30)
                    Text("written by iosayed".uppercased())
                        .font(.system(.caption))
                        .foregroundColor(.secondary)
                        .padding(.leading,30)
                }
            }//HStack
        }//VStack
        .cornerRadius(10)
                .overlay(
        RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
        opacity: 0.1), lineWidth: 1)
                )
                .padding([.top, .horizontal])
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
