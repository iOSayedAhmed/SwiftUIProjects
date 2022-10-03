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
                .fontWeight(.black)
                .lineLimit(3)
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
                .padding(.bottom,0)
            
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
