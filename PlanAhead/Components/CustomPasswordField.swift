//
//  CustomPasswordField.swift
//  PlanAhead
//
//  Created by Bartuğ Kaan Çelebi on 12.11.2024.
//

import SwiftUI

struct CustomPasswordField: View {
    @Binding var text: String
    var label: String
    var body: some View {
        VStack{
            HStack{
                Text(label)
                    .font(.subheadline)
                    .padding(.leading,5)
                Spacer()
            }
            SecureField("Enter your password", text: $text)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(15)
        }
        .padding(.horizontal, 25)
    }
}

#Preview {
    @Previewable @State var text = ""
    @Previewable @State var label = "Email"
    CustomTextField(text: $text, label: label)
}
