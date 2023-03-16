//
//  ContentView.swift
//  MyBusinessCard
//
//  Created by Ikbal Demirdoven on 2023-03-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.52, blue: 0.52)
            VStack
            {
                Image("ikbal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                Text("Ikbal Demirdoven")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                Divider()
                    .padding(.horizontal)
                InfoView(number: "+1 647 523 3534", imageName: "phone")
                InfoView(number: "ikbaldemirdoven@icloud.com", imageName: "envelope")
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
