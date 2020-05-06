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
    @State var BenchPressNumber: Int = 165
    @State var GoalBenchPressNumber: Int = 225

    @State var DumbbellPressNumber: Int = 50
    @State var GoalDumbbellPressNumber: Int = 70

    @State var GoalPushupNumber: Int = 1
    @State var PushupNumber: Int = 1

    @State var GoalFlyNumber: Int = 1
    @State var FlyNumber: Int = 1

    //back
    @State var DeadliftNumber: Int = 1
    @State var GoalDeadliftNumber: Int = 1

    @State var BarbellRowNumber: Int = 1
    @State var GoalBarbellRowNumber: Int = 1

    @State var PullupNumber: Int = 1
    @State var GoalPullupNumber: Int = 1

//    @State var DumbbellRowNumber: Int = 0
//    @State var GoalDumbbellRowNumber: Int = 0
//    @State var DumbbellRowProg: String = "0"
//
//    //legs
//    @State var SquatNumber: Int = 0
//    @State var GoalSquatNumber: Int = 0
//    @State var SquatProg: String = "0"
//
//    @State var LegPressNumber: Int = 0
//    @State var GoalLegPressNumber: Int = 0
//    @State var LegPressProg: String = "0"
    
    var body: some View {
        List{
//--------------------------------------------
            //chest
            VStack{
                Text("Chest").fontWeight(.bold).font(.system(size: 32)).padding()
            }
            HStack{
                VStack(alignment: .leading){
                Text("Bench Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Current Weight", value: $BenchPressNumber, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Weight", value: $GoalBenchPressNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\((BenchPressNumber / GoalBenchPressNumber)*100)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)

            //dumbbell

            HStack{
                VStack(alignment: .leading){
                Text("Dumbbell Press").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Current Weight", value: $DumbbellPressNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Goal Weight", value: $GoalDumbbellPressNumber, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\((DumbbellPressNumber / GoalDumbbellPressNumber)*100)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)

            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Pushups").fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    TextField("Current Reps", value: $PushupNumber, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Reps", value: $GoalPushupNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\((PushupNumber / GoalPushupNumber)*100)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }

            }.environment(\.defaultMinListRowHeight, 90)

            //pushup
            HStack{
                VStack(alignment: .leading){
                Text("Flies").fontWeight(.bold)
                    .multilineTextAlignment(.leading)

                    TextField("Goal Weight", value: $GoalFlyNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", value: $FlyNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\((FlyNumber/GoalFlyNumber)*100)%").bold().font(.system(size: 40))
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

                    TextField("Goal Weight", value: $GoalDeadliftNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    TextField("Current Weight", value: $DeadliftNumber, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.leading)

                    //progress bar location


                }
                HStack(alignment: .center){ Text("\((DeadliftNumber/GoalDeadliftNumber)*100)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
            }

                HStack{
                    VStack(alignment: .leading){
                        Text("Barbell Rows").fontWeight(.bold)
                        .multilineTextAlignment(.leading)

                        TextField("Goal Weight", value: $GoalBarbellRowNumber, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.leading)

                        TextField("Current Weight", value: $BarbellRowNumber, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.leading)

                        //progress bar location


                }
                HStack(alignment: .center){ Text("\((BarbellRowNumber/GoalBarbellRowNumber)*100)%").bold().font(.system(size: 40))
                    .multilineTextAlignment(.trailing)
                }
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Pull Ups").fontWeight(.bold)
                        .multilineTextAlignment(.leading)

                    TextField("Goal Weight", value: $GoalPullupNumber, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                    TextField("Current Weight", value: $PullupNumber, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.leading)

                //progress bar location


                }
                HStack(alignment: .center){ Text("\((PullupNumber/GoalPullupNumber)*100)%").bold().font(.system(size: 40))
                .multilineTextAlignment(.trailing)
                }
            }
            
            //dumbbell row
        

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
