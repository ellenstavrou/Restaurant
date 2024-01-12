//
//  GalleryView.swift
//  Restaurant
//
//  Created by Ellen Stavrou on 20/06/2023.
//

import SwiftUI

struct GalleryView: View {
    
    @State var selectedPhoto = ""
    @State var sheetVisible = false
    @State var photoData = [String]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { proxy in
                
                ScrollView (showsIndicators: false){
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                            
                            ForEach(photoData, id: \.self) { p in
                                Image(p)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: (proxy.size.width-20)/3)
                                    .clipped()
                                    .onTapGesture {
                                        selectedPhoto = p
                                        sheetVisible = true
                                    }
                            }
                        }
                }
                
            }
            
            
            }
        .padding(20)
        .onAppear {
                photoData = dataService.getPhotos()
        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto, sheetVisible: $sheetVisible)
        }
        
    }
    
    struct GalleryView_Previews: PreviewProvider {
        static var previews: some View {
            GalleryView()
        }
    }
    
}
