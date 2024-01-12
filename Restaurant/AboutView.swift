//
//  AboutView.swift
//  Restaurant
//
//  Created by Ellen Stavrou on 20/06/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView {
            
            VStack (alignment: .leading) {
                
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono.[1] It was the first sushi restaurant in the world[2] to receive three stars from the Michelin Guide,[3] although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public,[4][5] instead requiring reservations to be made through the concierge of a luxury hotel.[6] The restaurant itself only has ten counter seats.[7] A two-star branch operated by his son Takashi is located at Roppongi Hills in Minato, Tokyo.[8][9] The late French chef Joël Robuchon said that the restaurant was one of his favorites in the world, and that it taught him that sushi is an art.")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top)
                    .padding(.bottom)
                
                Text("Tsukamoto Sogyo Building")
                Text("Basement Floor 1")
                Text("2-15, Ginza 4-chome")
                Text("Chūō, Tokyo")
                Text("Japan")
                
            }
            .padding(.horizontal)
        }
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
