//
//  TextField1.swift
//  RecipeSwiftUI
//
//  Created by Takuya Fuma on 2024/09/11.
//

import SwiftUI

struct TextField1: View {
    
    let label: String
    @Environment(\.colorScheme) var colorScheme
    @Binding var text: String
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
                
                Text(label)
                    .padding(.horizontal, 5)
                    .background(
                        colorScheme == .dark ?
                            .black.opacity(isTyping || !text.isEmpty ? 1 : 0) :
                            .white.opacity(isTyping || !text.isEmpty ? 1 : 0))
                    .foregroundStyle(isTyping ? .blue : Color.primary)
                    .padding(.leading)
                    .offset(y:isTyping || !text.isEmpty ? -27 : 0)
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
    TextField1(label: "First Name", text: .constant(""))
}
