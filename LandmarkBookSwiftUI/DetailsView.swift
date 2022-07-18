//
//  DetailsView.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct DetailsView: View {
    var landmark: Landmark
    var body: some View {
        
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4, alignment: .center)
           
            CircleImageView(imageName: landmark.imageName)
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.17)
                .padding(.bottom,UIScreen.main.bounds.height * -0.20)
            
            VStack{
                Text(landmark.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack{
                    Text(landmark.category)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.country)
                }.frame(width: UIScreen.main.bounds.width * 0.95)
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(landmark: londonBridgeLandmark)
    }
}
