//
//  CardView.swift
//  GymBuddie
//
//  Created by Jacob Leonard on 2/11/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct box{
    var id: Int
    let title, imageUrl: String
}

struct CardView: View {
    let boxes: [box] = [
        box(id: 0, title: "Chest", imageUrl: ""),
        box(id: 1, title: "Back", imageUrl: ""),
        box(id: 1, title: "Legs", imageUrl: "")
    ]
    
    var body: some View {
        NavigationView{
            navigationBarTitle(Text("Workout:")
                .font(.system(size: 20)))
            ScrollView{
                HStack{
                    boxView()
                    boxView()
                    boxView()
                    boxView()
                    boxView()
                    boxView()
                    boxView()
                    boxView()
                }
            }
        }
    }
}

struct boxView: View{
    var body: some View{
        GeometryReader{ reader in
            VStack{
                Image("")
                    .frame(width: reader.size.width / 2.5, height: reader.size.height / 3)
                
                Text("Chest")
                    .fontWeight(.bold)
                    .font(.system(size: 12))
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
