//
//  ContentView.swift
//  SwiftUIButtons
//
//  Created by iOSayed on 16/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Rotating")
            } label: {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .buttonStyle(RotateCross())
           

            
            Button {
                print("Hello World!")
            } label: {
                Text("Hello World")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                
                    .background(Color.purple)
                    .cornerRadius(40)
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple,lineWidth: 5)
                    }
                //.border(Color.purple ,width: 5)
            }
            .padding(.bottom, 50)
           
            Button {
                print("Delete ")
            } label: {
                HStack{
                    Image(systemName: "trash")
                        .font(.largeTitle)
                        .padding()
                    Text("Delete")
                        .font(.title)
                        .fontWeight(.semibold)
                }//HStack
                .frame(minWidth: 0,maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(Color.red)
                .cornerRadius(40)
                .padding(.horizontal,20)
                
            }
            
            Button {
                print("Add ")
            } label: {
                HStack{
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .padding()
                    Text("Add")
                        .font(.title)
                        .fontWeight(.semibold)
                }//HStack
       
            }
            .buttonStyle(GreadientBackgroundButtonStyle())
            
            Button {
                print("Clicked Share")
            } label: {
                HStack{
                    Image(systemName: "square.and.arrow.up")
                        .font(.largeTitle)
                        .padding()
                    Text("Share")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            .buttonStyle(GreadientBackgroundButtonStyle())
            
        }
        
       // .padding()
       // .overlay {
//            Rectangle()
//                .stroke(Color.red , lineWidth: 5)
           // RoundedRectangle(cornerRadius: 50)
             //   .stroke(Color.red,lineWidth: 5)
      //  }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
