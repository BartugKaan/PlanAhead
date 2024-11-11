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
                Form{
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    Button {
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundStyle(Color("SecondaryColor"))
                            Text("Login")
                                .foregroundStyle(Color("LogoTextColor"))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(.all, 8)
                        }
                    }
                    .padding(8)
                }
                .scrollDisabled(true)
                .frame(width: UIScreen.main.bounds.width, height: 250)
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
