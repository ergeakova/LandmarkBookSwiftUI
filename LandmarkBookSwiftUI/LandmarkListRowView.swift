//
//  LandmarkListRow.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct LandmarkListRowView: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            LandmarkListRowImageView(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

struct LandmarkListRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowView(landmark: londonBridgeLandmark)
    }
}
