//
//  CircleImageView.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct CircleImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 5))
            .shadow(radius: 5)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(imageName: "pisa")
    }
}
