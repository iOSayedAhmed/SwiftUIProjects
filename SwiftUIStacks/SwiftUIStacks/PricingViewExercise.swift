//
//  PricingViewExercise.swift
//  SwiftUIStacks
//
//  Created by Develop on 08/10/2022.
//

import SwiftUI

struct PricingViewExercise: View {
    var body: some View {
        ZStack{
              
                PriceCardView(title: "Basic", icon: "sun.min", price: "$9", typeSubscribe: "Per Month", textColor: Color.white, bgColor: Color.purple)
                .padding()
                .offset(x: 0, y: -220)
                PriceCardView(title: "Pro", icon: "dial", price: "$19", typeSubscribe: "Per Month", textColor: Color.white, bgColor: Color( red: 255/255, green: 183/255, blue: 37/255))
                .padding()
                .offset(x: 0, y: -110)
                
                PriceCardView(title: "Teams", icon: "wand.and.rays", price: "$299", typeSubscribe: "Per Month", textColor: Color.white, bgColor: Color( red: 62/255, green: 62/255, blue: 70/255))
                .padding()
            
        }
        
    }
}

struct PricingViewExercise_Previews: PreviewProvider {
    static var previews: some View {
        PricingViewExercise()
    }
}

struct PriceCardView: View {
    var title:String
    var icon:String
    var price:String
    var typeSubscribe:String
    var textColor:Color
    var bgColor:Color
    var body: some View {
        
           VStack {
               Image(systemName: icon)
                   .font(.largeTitle)
                   .foregroundColor(Color.white)
               
                Text(title)
                   .font(.system(.title, design: .rounded))
                   .fontWeight(.black)
                    .foregroundColor(textColor)
              
                   Text(price)
                       .font(.system(size:40 , weight: .heavy, design: .rounded))
                       .foregroundColor(textColor)
            
                   Text(typeSubscribe)
                       .font(.headline)
                       .foregroundColor(textColor)
              
               Spacer()
                
            }
           .frame(minWidth: 0, maxWidth:.infinity,minHeight: 200, maxHeight:300)
           .padding(40)
           .background(bgColor)
           .cornerRadius(10)
        
    }
}
