//
//  ContentView.swift
//  AricleRow
//
//  Created by Develop on 03/10/2022.
//

import SwiftUI


struct ContentView: View {
    var article : Article
    var body: some View {
        VStack(alignment: .leading){
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.273, green: 0.478, blue: 0.996))
                .lineLimit(3)
                .rotation3DEffect(.degrees(60),axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 1, x: 0, y: 15)
                .padding(.bottom,0)
            
            Text("By \(article.author)".uppercased())
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.bottom,0)
            
            HStack(spacing:3){
                ForEach(1...(article.rating) , id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }
            
            Text(article.details)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(nil)
                .padding(.bottom,0)
                //.rotationEffect(.degrees(20))
                
            Image(systemName: "skew")
                .resizable()
                .foregroundColor(.accentColor)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(article: .init())
    }
}
