//
//  ContentView.swift
//  learnSwiftUI
//
//  Created by Maruf Khan on 27/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var name: String = ""
    var body: some View {
        VStack {
            TextField("Enter your name: ", text: $name).padding().textFieldStyle(RoundedBorderTextFieldStyle()).clipShape(RoundedRectangle(cornerRadius: 8))
            
            Button(action: {
                if self.name.isEmpty {
                    self.message = ""
                }else {   self.message = "Nice to meet you \(self.name)!"}
            }, label: {
                Text("Submit").padding().background(Color.blue).foregroundColor(Color.white).clipShape(RoundedRectangle(cornerRadius: 30))
            }).padding()
            Text(self.message).padding()
        }.background(Color.indigo).padding()
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}



#Preview {
    ContentView()
}
