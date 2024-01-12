//
//  PhotoView.swift
//  Restaurant
//
//  Created by Ellen Stavrou on 23/06/2023.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        ZStack {
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.black)
                            .scaleEffect(2)
                    }
                    .padding()
                    
                }
                
                Spacer()
            }

            
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhoto: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
    }
}
