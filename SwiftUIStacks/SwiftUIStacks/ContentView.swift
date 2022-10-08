//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Develop on 08/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:12) {
                headerView()
               
            HStack(spacing: 10) {
                PricingPlanView(title: "Basic", price: "$9", bgColor: Color.purple, textColor: Color.white)
                ZStack {
                    PricingPlanView(title: "Pro", price: "$19", bgColor: Color( red: 240/255, green: 240/255, blue: 240/255), textColor: Color.black)
                    Text("Best For Designers")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color( red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 87)
                }
            }
            ZStack {
                PricingPlanView(title: "Teams", price: "$299", bgColor: Color( red: 62/255, green: 63/255, blue: 70/255), textColor: Color.white, icon:"wand.and.rays")
                Text("Perfect for Teams with 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color( red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 87)
            }
            //Add Spacer to push the VStack to the Top .
            Spacer()
        }
        .padding(.horizontal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//HeaderView
struct headerView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 2){
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
            }
            Spacer()
        }
    }
}

struct PricingPlanView: View {
    var title:String
    var price:String
    var bgColor:Color
    var textColor:Color
    var icon:String?
    var body: some View {
        
        VStack {
            
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            })
            Text(title)
                .font(.system(size: 40, weight: .heavy,design: .rounded))
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy,design: .rounded))
                .foregroundColor(textColor)
            Text("Per month")
                .font(.headline)
                .foregroundColor(textColor)
            
            
        }
        .frame(minWidth: 0, maxWidth:.infinity,maxHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
        
        
    }
}
