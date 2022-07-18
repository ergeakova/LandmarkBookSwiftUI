//
//  LandmarkListView.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            List(landmarkArray){ landmark in
                NavigationLink(destination: DetailsView(landmark: landmark)) {
                    Text(landmark.name)
                }
            }.navigationTitle("Landmark List")
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
