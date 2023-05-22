//
//  ContentView.swift
//  Server
//
//  Created by ساره المرشد on 22/05/2023.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Server")
                .foregroundColor(Color.white)
                .padding(.bottom, 700)
            VStack{
                ForEach(allServer ){Server in
                    HStack{
                          
                        Image( Server.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.white)
                            
                            .frame(width: 60)
//                        .padding(.top ,70)
//
                        
              Spacer()
                        VStack{
                            Text(Server.title).font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.trailing)
                                
                            Text(Server.describtion).font(.subheadline).foregroundColor(Color.gray)
                        }
                        
                    }
                    
                }
                .padding(.trailing, 280)
              
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
