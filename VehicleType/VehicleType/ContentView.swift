import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("vehicle type")
                   // .padding(.bottom ,00)
            Divider()
            
                ForEach(allVType ){VType in
                    HStack{
                        
                        VStack{
                            Text(VType.title).font(.title)
                               // .padding(.top)
                            Text(VType.describtion).font(.subheadline).multilineTextAlignment(.leading)
                        }  .padding([.top, .leading], 60.0)
                       Spacer()
                        Image( VType.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                       
                        
                    }.padding([.top, .trailing], 30.0)
                  
                   
                }
              
              }//.padding(.top ,300)
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

