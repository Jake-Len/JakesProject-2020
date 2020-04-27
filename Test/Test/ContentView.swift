//
//  ContentView.swift
//  Test
//
//  Created by Jacob Leonard on 2/25/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader{ s in
            ZStack(alignment: .leading){
                //background
                Rectangle().frame(width: s.size.width, height: s.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                
                //progress
                Rectangle().frame(width: min(CGFloat(self.value) * s.size.width, s.size.width), height: s.size.height)
                    .animation(.linear)
                    .foregroundColor(Color(UIColor.systemBlue))
            }.cornerRadius(45.0)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}

//Menu Stuff
struct MenuContent: View {
    var body: some View{
        NavigationView{
            List{
                Text("MENU").fontWeight(.bold)
                .font(.system(.largeTitle))
                    //link to home page
                    NavigationLink(destination: ContentView()) {
                       Text("Home").bold().onTapGesture {
                       print("Home")
                    }
                }
                    //link to workout page, possible submenu but that may get clutterey
                    NavigationLink(destination: WorkoutList()) {
                        Text("Workouts").bold().onTapGesture {
                        print("Workouts")
                    }
                }
                    //link to settings page
                    NavigationLink(destination: Settings()) {
                        Text("Settings").bold().onTapGesture {
                        print("Settings")
                    }
                }
                    //future: link to account page
                    NavigationLink(destination: Account()) {
                        Text("Account").bold().onTapGesture {
                        print("Account")
                    }
                }
            }.environment(\.defaultMinListRowHeight, 90)
        }
    }
}

struct menu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack{
            //NavigationView{
                GeometryReader{ g in
                    EmptyView()
                }
                .background(Color.gray.opacity(0.3))
                .opacity(self.isOpen ? 1.0 : 0.0)
                .animation(Animation.easeIn.delay(0.25))
                .onTapGesture {
                    self.menuClose()
                }
                
                HStack{
                    MenuContent()
                        .frame(width: self.width)
                        .background(Color.white)
                        .offset(x: self.isOpen ? 0: -self.width)
                        .animation(.default)
                    Spacer()
            }
        }
    }
}

struct ContentView: View {
    @State var menuOpen: Bool = false
    
    @State var ProgressValue: Float = 0.0
    
    var body: some View {
        
        HStack{
            VStack{
                ProgressBar(value: $ProgressValue).frame(height:20)
                Spacer()
            }
            
            
            GeometryReader{ s in
                ZStack(alignment: .bottomTrailing){
                    if !self.menuOpen{
                        Button(action: {
                            self.openMenu()
                        }) {
                            Image(systemName: "plus.circle.fill")
                            .resizable()
                                .frame(width:80, height:80)
                                .foregroundColor((Color(.darkGray)))
                                .padding()
                        }
                    }
                    menu(width: s.size.width, isOpen: self.menuOpen, menuClose: self.openMenu)
                }.frame(alignment: .bottom)

            }
        }
    }
    
    func openMenu(){
        self.menuOpen.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


