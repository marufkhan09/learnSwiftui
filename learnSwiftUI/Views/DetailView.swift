//
//  DetailView.swift
//  learnSwiftUI
//
//  Created by Maruf Khan on 28/7/24.
//

import SwiftUI


struct DetailView: View {
    var item: String
    
    var body: some View {
        VStack {
            Text(item)
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle(item)
    }
}
