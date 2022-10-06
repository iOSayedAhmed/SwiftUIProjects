//
//  SwiftUIImage.swift
//  AricleRow
//
//  Created by Develop on 06/10/2022.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
//        VStack(alignment: .center) {
//            Image("paris")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                //.frame(width:300)
//                .clipShape(Circle())
//                .opacity(0.8)
//                .overlay(
//                    Image(systemName: "heart.fill")
//                        .font(.system(size: 50))
//                        .foregroundColor(.red)
//                        .opacity(0.8)
//                )
            //Second image
            Image("paris")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea(.all)
                
                //  .frame(height: 500)
                .overlay(
                   VStack{
                       
                        Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast \n\n By Elsayed Ahmed")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .font(.system(.headline, design: .rounded))
                            .padding()
                            .background(Color.black)
                            .opacity(0.8)
                            .cornerRadius(10)
                            .padding()
                           
                        Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast \n\n By Elsayed Ahmed")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .font(.system(.headline, design: .rounded))
                            .padding()
                            .background(Color.black)
                            .opacity(0.8)
                            .cornerRadius(10)
                            .padding()
                        
                       Image(systemName: "heart.fill")
                                               .font(.system(size: 150))
                                               .foregroundColor(.red)
                                               .opacity(0.8)
                                               
                        
                    }
                    
                        
                   
                
                )
                
            
//        }
//        .padding()
//
        
            
    }
}

struct SwiftUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage()
    }
}
