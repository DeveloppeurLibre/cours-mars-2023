//
//  PostView.swift
//  TestProject
//
//  Created by Quentin Cornu on 21/03/2023.
//

import SwiftUI

struct PostView: View {
    
    let profile: Profile
    let location: String
    let imageURL: URL
    
    // 💡 Mettre TOUTES ses variables d'état en private
    @State private var isLiked: Bool = false
    @State private var isSaved: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                AsyncImage(url: profile.pictureURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                } placeholder: {
                    Rectangle()
                        .foregroundColor(.gray)
                }
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(profile.name)
                        .bold()
                    Text(location)
                }
            }
            .padding(.horizontal)
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
            }
            HStack {
                ActivableButton(
                    iconName: "heart",
                    activatedIconColor: .red,
                    isActive: $isLiked
                )
                ActivableButton(
                    iconName: "flag",
                    activatedIconColor: .blue,
                    isActive: $isSaved
                )
            }
            .padding()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(
            profile: .preview1,
            location: "Paris",
            imageURL: URL(string: "https://images.pexels.com/photos/15954328/pexels-photo-15954328.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
        )
    }
}
