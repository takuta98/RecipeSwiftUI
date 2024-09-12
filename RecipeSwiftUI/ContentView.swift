//
//  ContentView.swift
//  RecipeSwiftUI
//
//  Created by Takuya Fuma on 2024/09/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName  = ""
    @State var lastName = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TextField1(label: "First Name", text: $firstName)
            TextField1(label: "Last Name", text: $lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
