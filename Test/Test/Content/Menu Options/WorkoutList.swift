//
//  DetailView.swift
//  Test
//
//  Created by Jacob Leonard on 3/5/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct WorkoutList: View {
    //chest
    @State var BPNumber: String = ""
    @State var GoalBPNumber: String = ""
    @State var BPProg: String = "0"
    
    @State var DPNumber: String = ""
    @State var GoalDPNumber: String = ""
    @State var DPProg: String = "0"
    
    @State var GoalPUNumber: String = ""
    @State var PUNumber: String = ""
    @State var PUProg: String = "0"
    
    @State var GoalFLNumber: String = ""
    @State var FLNumber: String = ""
    @State var FLProg: String = "0"
    
    //back
    @State var DeadliftNumber: String = ""
    @State var GoalDeadliftNumber: String = ""
    @State var DeadliftProg: String = "0"
    
    //legs
    
    var body: some View {

        
        List{
            VStack{
                Text("WORKOUTS").fontWeight(.bold).onTapGesture {
                    print("WORKOUTS")
                }.font(.system(.largeTitle))
            }
            
            VStack{
                Text("Chest").fontWeight(.bold).font(.system(size: 32))
            }
                    
            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Bench Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", text: $GoalBPNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", text: $BPNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                    
                    
                }
                HStack(alignment: .center){ Text("\(BPProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
                
            }.environment(\.defaultMinListRowHeight, 90)
            
            //dumbbell
            
            HStack{
                VStack(alignment: .leading){
                Text("Dumbbell Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", text: $GoalDPNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", text: $DPNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                    
                    
                }
                HStack(alignment: .center){ Text("\(PUProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
                
            }.environment(\.defaultMinListRowHeight, 90)
            
            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Pushups").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Reps", text: $GoalPUNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Reps", text: $PUNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                    
                    
                }
                HStack(alignment: .center){ Text("\(PUProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
                
            }.environment(\.defaultMinListRowHeight, 90)
            
            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Flies").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", text: $GoalFLNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", text: $FLNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                    
                    
                }
                HStack(alignment: .center){ Text("\(FLProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
                
            }.environment(\.defaultMinListRowHeight, 90)
            VStack {
                Text("Back").fontWeight(.bold).font(.system(size: 32))
            }
            
            HStack{
                VStack(alignment: .leading){
                Text("Deadlift").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", text: $GoalDeadliftNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", text: $DeadliftNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                    
                    
                }
                HStack(alignment: .center){ Text("\(DeadliftProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
            }
            HStack{
                VStack(alignment: .leading){
                    Text("Barbell Rows").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", text: $GoalFLNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", text: $FLNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    //progress bar location
                
                
            }
            HStack(alignment: .center){ Text("\(FLProg)%").bold().font(.system(size: 40))
                .multilineTextAlignment(.trailing)
            }
        }
            HStack{
                VStack(alignment: .leading){
                    Text("Pull Ups").fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                
                    TextField("Goal Weight", text: $GoalFLNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)
                
                    TextField("Current Weight", text: $FLNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)
                
                //progress bar location
                
                
                }
                HStack(alignment: .center){ Text("\(FLProg)%").bold().font(.system(size: 40))
                .multilineTextAlignment(.trailing)
                }
            }
            HStack{
                VStack(alignment: .leading){
                    Text("Dumbbell Rows").fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        
                        TextField("Goal Weight", text: $GoalFLNumber)
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.leading)
                        
                        TextField("Current Weight", text: $FLNumber)
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.leading)
                        
                        //progress bar location
                }
                HStack(alignment: .center){ Text("\(FLProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
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
