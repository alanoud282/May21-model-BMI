//
//  ContentView.swift
//  AR
//
//  Created by ساره المرشد on 22/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
           
            VStack{
                Text("Experience functions in AR")
                    .font(.title)
                    .foregroundColor(Color.black)
                Spacer()
                ForEach(allAR ){AR in
                    
                    HStack{
                          
                        Image(AR.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top)
                            .frame(width: 100)
                        //.padding(.top ,70)
                       
                        VStack{
                            Text(AR.title).font(.title)
                                //.padding(.top)
                        }
                        
                    }
                    .padding()
                }
               
              }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
