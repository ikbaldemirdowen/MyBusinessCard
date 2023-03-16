//
//  InfoView.swift
//  MyBusinessCard
//
//  Created by Ikbal Demirdoven on 2023-03-15.
//

import SwiftUI


struct InfoView: View {
    
    var number : String
    var imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .frame(width: .infinity, height: 25)
            .padding(.horizontal)
            .overlay(
                HStack
                {
                    Image(systemName: imageName)
                    Text(number)
                })
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(number: "1", imageName: "phone")
            .previewLayout(.sizeThatFits)
    }
}
