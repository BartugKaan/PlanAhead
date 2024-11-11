//
//  HeaderView.swift
//  PlanAhead
//
//  Created by Bartuğ Kaan Çelebi on 11.11.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("PlanAheadLogo")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width, height: 150)
            Text("Plan Ahead")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.top, 150)
                .foregroundStyle(Color("LogoTextColor"))
        }
        .padding(.top,20)
    }
}

#Preview {
    HeaderView()
}
