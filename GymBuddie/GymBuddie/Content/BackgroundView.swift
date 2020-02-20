//
//  BackgroundView.swift
//  GymBuddie
//
//  Created by Jacob Leonard on 2/12/20.
//  Copyright © 2020 Jacob Leonard. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {

            VStack{
                Text("WORKOUT:")
                    .fontWeight(.bold)
                    .font(.system(size: 55.0, design: .rounded))
                    .padding(.horizontal)
                    .foregroundColor(Color.gray)
                    .edgesIgnoringSafeArea(.all)
                }
            .padding(.top)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
