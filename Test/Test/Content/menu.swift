//
//  menu.swift
//  Test
//
//  Created by Jacob Leonard on 3/7/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct menu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack{
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

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
