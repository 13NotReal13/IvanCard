//
//  InfoView.swift
//  IvanCard
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI

struct InfoView: View {
    var imageName: String
    var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundStyle(.green)
                Text(text)
            })
            .padding()
    }
}

#Preview {
    InfoView(imageName: "phone.fill", text: "+48 987 654 321")
        .previewLayout(.sizeThatFits)
}
