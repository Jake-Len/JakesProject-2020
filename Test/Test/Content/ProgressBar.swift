//
//  ProgressBar.swift
//  Test
//
//  Created by Jacob Leonard on 4/23/20.
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
