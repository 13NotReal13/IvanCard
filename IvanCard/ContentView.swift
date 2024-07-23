//
//  ContentView.swift
//  IvanCard
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack {
                Image("myPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle(), style: FillStyle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                Text("Ivan Semikin")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("IOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(imageName: "phone.fill", text: "+48 987 654 321")
                InfoView(imageName: "envelope.fill", text: "ivan321@gmail.com")
            }
        }
    }
}

#Preview {
    ContentView()
}
