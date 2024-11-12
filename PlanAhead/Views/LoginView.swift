//
//  LoginView.swift
//  PlanAhead
//
//  Created by Bartuğ Kaan Çelebi on 11.11.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                // Input Field - Email, Password, Button
                VStack{
                    CustomTextField(text: $email, label: "Email Address")
                        .padding(.vertical, 25)
                    CustomPasswordField(text: $password, label: "Password")
                        .padding(.bottom, 25)
                    Button {
                        //Action
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                                .foregroundStyle(Color("SecondaryColor"))
                            Text("Log In")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                }
                Spacer()
                // Footer
                VStack{
                    Text("Are you new in here ?")
                    NavigationLink("Create new Account") {
                        RegisterView()
                    }
                    .foregroundStyle(Color("SecondaryColor"))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
