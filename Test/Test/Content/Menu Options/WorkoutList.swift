//
//  DetailView.swift
//  Test
//
//  Created by Jacob Leonard on 3/5/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct WorkoutList: View {
    var body: some View {
        List{
            Text("WORKOUTS").fontWeight(.bold).onTapGesture {
                print("WORKOUTS")
            }.font(.system(.largeTitle))
                //link to chest workouts
                    NavigationLink(destination: ChestWorkouts()) {
                        Text("Chest").fontWeight(.bold).onTapGesture {
                        print("Chest")
                    }
                }//link to back workouts
                    NavigationLink(destination: BackWorkouts()) {
                        Text("Back").fontWeight(.bold).onTapGesture {
                        print("Back")
                    }
                }//link to leg workouts
                    NavigationLink(destination: LegWorkouts()) {
                        Text("Legs").fontWeight(.bold).onTapGesture {
                        print("Legs")
                    }
                }
        }
    }
}

struct WorkoutList_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutList()
    }
}
