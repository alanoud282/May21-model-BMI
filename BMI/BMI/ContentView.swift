import SwiftUI

struct ContentView: View {
    @State private var weight: Double = 150
    @State private var height: Double = 125
    @State private var bmi: Double = 0
    
    private var backgroundColor: Color {
        if bmi < 18.5 { //Mild Thinness
            return Color.yellow
        } else if bmi >= 18.5 && bmi < 25 {//Normal
            return Color.green
        } else if bmi >= 25 && bmi < 30 {//Overweight
            return Color.orange
        } else {
            return Color.red
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("BMI Calculator")
                .font(.title)
                .padding()
                .foregroundColor(.black)
            VStack {
                Text("Weight: \(Int(weight)) kg")
                    .foregroundColor(.black)
                Slider(value: $weight, in: 0...300, step: 1)
                    .padding(.horizontal)
            }
            
            VStack {
                Text("Height: \(Int(height)) cm")
                    .foregroundColor(.black)
                Slider(value: $height, in: 0...250, step: 1)
                    .padding(.horizontal)
            }
            
            Button(action: {
                calculateBMI()
            }) {
                Text("Calculate")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            
            Text("BMI: \(String(format: "%.1f", bmi))")
                .font(.title)
                .foregroundColor(.black)
                .padding()
            
            Spacer()
        }
        .background(backgroundColor.edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
    }
    
    private func calculateBMI() {
        let heightInMeters = height / 100
        bmi = weight / (heightInMeters * heightInMeters)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

