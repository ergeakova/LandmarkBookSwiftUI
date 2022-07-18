//
//  DetailsView.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack{
            MapView(coordinate: landmarkArray[0].locationCoordinate)
                .edgesIgnoringSafeArea(.top)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4, alignment: .center)
            //.position(x:UIScreen.main.bounds.width * 0.5 ,y: UIScreen.main.bounds.height * 0.2)

           
            CircleImageView(imageName: "pisa")
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.17)
                .padding(.bottom,UIScreen.main.bounds.height * -0.20)
            
          
            
            VStack{
                Text(landmarkArray[0].name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack{
                    Text(landmarkArray[0].category)
                        .font(.subheadline)
                    Spacer()
                    Text(landmarkArray[0].country)
                }.frame(width: UIScreen.main.bounds.width * 0.95)
            }
            
            
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
