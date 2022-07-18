//
//  LandmarkListRowImageView.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct LandmarkListRowImageView: View {
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60, alignment: .leading)
            .cornerRadius(10)
            .shadow(color: .blue, radius: 5)
    }
}

struct LandmarkListRowImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImageView(landmarkImageName: "eiffel")
    }
}
