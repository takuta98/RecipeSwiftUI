//
//  TextField1.swift
//  RecipeSwiftUI
//
//  Created by Takuya Fuma on 2024/09/11.
//

import SwiftUI

struct TextField1: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var text = ""
    @FocusState var isTyping: Bool
    
    var body: some View {
        VStack() {
            ZStack(alignment: .leading) {
                TextField("", text: $text)
                    .padding(.leading)
                    .frame(height: 55)
                    .focused($isTyping)
                    .background(
                        isTyping ? .blue : Color.primary,
                        in: RoundedRectangle(cornerRadius: 14).stroke(lineWidth: 2)
                    )
                
                Text("First Name")
                    .padding(.horizontal, 5)
                    .background(
                        colorScheme == .dark ?
                            .black.opacity(isTyping || !text.isEmpty ? 1 : 0) :
                            .white.opacity(isTyping || !text.isEmpty ? 1 : 0))
                    .foregroundStyle(isTyping || !text.isEmpty ? .blue : Color.primary)
                    .padding(.leading)
                    .offset(y:isTyping ? -27 : 0)
                    .font(.headline)
                    .onTapGesture {
                        isTyping.toggle()
                    }
            }
            .animation(.linear(duration: 0.2), value: isTyping)
        }
        .padding(.horizontal)
    }
}

#Preview {
    TextField1()
}
