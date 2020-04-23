//
//  DetailView.swift
//  Test
//
//  Created by Jacob Leonard on 3/5/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI


struct WorkoutList: View {//variables
    //chest
    @State var BenchPressNumber: String = ""
    @State var GoalBenchPressNumber: String = ""
    @State var BenchPressProg: String = "0"

    @State var DumbbellPressNumber: String = ""
    @State var GoalDumbbellPressNumber: String = ""
    @State var DumbbellPressProg: String = "0"

    @State var GoalPushupNumber: String = ""
    @State var PushupNumber: String = ""
    @State var PushupProg: String = "0"

    @State var GoalFlyNumber: String = ""
    @State var FlyNumber: String = ""
    @State var FlyProg: String = "0"

    //back
    @State var DeadliftNumber: String = ""
    @State var GoalDeadliftNumber: String = ""
    @State var DeadliftProg: String = "0"

    @State var BarbellRowNumber: String = "0"
    @State var GoalBarbellRowNumber: String = "0"
    @State var BarbellRowProg: String = "0"

    @State var PullupNumber: String = "0"
    @State var GoalPullupNumber: String = "0"
    @State var PullupProg: String = "0"

    @State var DumbbellRowNumber: String = "0"
    @State var GoalDumbbellRowNumber: String = "0"
    @State var DumbbellRowProg: String = "0"

    //legs
    @State var SquatNumber: String = "0"
    @State var GoalSquatNumber: String = "0"
    @State var SquatProg: String = "0"

    @State var LegPressNumber: String = "0"
    @State var GoalLegPressNumber: String = "0"
    @State var LegPressProg: String = "0"
    
    var body: some View {

        
        List{
            VStack{
                Text("WORKOUTS").fontWeight(.bold).onTapGesture {
                    print("WORKOUTS")
                }.font(.system(.largeTitle))
            }
//--------------------------------------------
            //chest
            VStack{
                Text("Chest").fontWeight(.bold).font(.system(size: 32)).padding()
            }
            HStack{
                VStack(alignment: .leading){
                Text("Bench Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Weight", text: $GoalBenchPressNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", text: $BenchPressNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\(BenchPressProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)
            
            //dumbbell
            
            HStack{
                VStack(alignment: .leading){
                Text("Dumbbell Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Weight", text: $GoalDumbbellPressNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", text: $DumbbellPressNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\(DumbbellPressProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)
            
            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Pushups").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Reps", text: $GoalPushupNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Reps", text: $PushupNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\(PushupProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)
            
            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Flies").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Weight", text: $GoalFlyNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", text: $FlyNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\(FlyProg)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)

//--------------------------------------------
            //Back
            VStack {
                Text("Back").fontWeight(.bold).font(.system(size: 32)).padding()
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

                    TextField("Goal Weight", text: $GoalBarbellRowNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", text: $BarbellRowNumber)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


            }
            HStack(alignment: .center){ Text("\(BarbellRowProg)%").bold().font(.system(size: 40))
                .multilineTextAlignment(.trailing)
            }
        }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Pull Ups").fontWeight(.bold)
                        .multilineTextAlignment(.leading)

                    TextField("Goal Weight", text: $GoalPullupNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                    TextField("Current Weight", text: $PullupNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                //progress bar location


                }
                HStack(alignment: .center){ Text("\(PullupProg)%").bold().font(.system(size: 40))
                .multilineTextAlignment(.trailing)
                }
            }
            
            //dumbbell row
//            HStack{
//                VStack(alignment: .leading){
//                    Text("Dumbbell Row").fontWeight(.bold)
//                        .multilineTextAlignment(.leading)
//
//                    TextField("Goal Weight", text: $GoalDumbbellRowNumber)
//                    .keyboardType(.numberPad)
//                    .multilineTextAlignment(.leading)
//
//                    TextField("Current Weight", text: $DumbbellRowNumber)
//                    .keyboardType(.numberPad)
//                    .multilineTextAlignment(.leading)
//
//                //progress bar location
//
//
//                }
//                HStack(alignment: .center){ Text("\(DumbbellRowProg)%").bold().font(.system(size: 40))
//                .multilineTextAlignment(.trailing)
//                }
//            }

//--------------------------------------------
            //legs
            
            //squats

            //leg press

        }
    }
}


struct WorkoutList_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutList()
    }
}
