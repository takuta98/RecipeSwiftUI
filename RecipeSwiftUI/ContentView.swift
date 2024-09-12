//
//  ContentView.swift
//  RecipeSwiftUI
//
//  Created by Takuya Fuma on 2024/09/11.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            TextField1(label: "First Name")
            TextField1(label: "Last Name")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
