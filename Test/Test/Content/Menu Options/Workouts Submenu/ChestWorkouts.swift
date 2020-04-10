//
//  ChestWorkouts.swift
//  Test
//
//  Created by Jacob Leonard on 3/22/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct ChestWorkouts: View {
    @State var BPWeight: String = ""
    @State var GoalBPWeight: String = ""
    @State var benchProg: String = "0"
    
    @State var DPWeight: String = ""
    @State var GoalDPWeight: String = ""
    @State var DPProg: String = "0"
    
    @State var GoalPUNumber: String = ""
    @State var PUNumber: String = ""
    @State var PUProg: String = "0"
    
    @State var GoalFLNumber: String = ""
    @State var FLNumber: String = ""
    @State var FLProg: String = "0"

    
    var body: some View {
        List{
            VStack (alignment: .leading){
                
            //bench
                Text("Bench Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                TextField("Goal Weight", text: $GoalBPWeight)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                TextField("Current Weight", text: $BPWeight)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                //progress bar location
                Text("\(benchProg)")
                .multilineTextAlignment(.trailing)
                
            }
            
            //dumbbell
            VStack (alignment: .leading){
                Text("Dumbbell Press").fontWeight(.bold)
                TextField("Goal Weight", text: $GoalDPWeight)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                TextField("Current Weight", text: $DPWeight)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                
                //progress bar location
                Text("\(DPProg)")
            }
            
            //pushup
            VStack (alignment: .leading){
                Text("Pushups").fontWeight(.bold)
                TextField("Goal Reps", text: $GoalPUNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                TextField("Current Reps", text: $PUNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                //progress bar location
                Text("\(PUProg)")
            }.environment(\.defaultMinListRowHeight, 90)
            
            VStack (alignment: .leading){
                Text("Flies").fontWeight(.bold)
                TextField("Goal weight", text: $GoalFLNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                TextField("Current Weight", text: $FLNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                //progress bar location
                Text("\(FLProg)")
            }.environment(\.defaultMinListRowHeight, 90)
            
            VStack{
                Text("Back").fontWeight(.bold).font(.system(size: 32))
            }
        }
    }
}

struct ChestWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        ChestWorkouts()
    }
}
