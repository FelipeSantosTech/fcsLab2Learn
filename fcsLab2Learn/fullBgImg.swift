//
//  fullBgImg.swift
//  fcsLab2Learn
//
//  Created by Paulo Marcelo Santos on 02/03/26.
//

import SwiftUI

struct fullBgImg: View {
    var body: some View {
        ZStack {
            Image("darkbg_pullup")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Color.black.opacity(0.4)
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text("Discipline")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 30)
                
                Spacer()
                Text("No one is coming to save you.")
                     .foregroundColor(.white)
                
                Button("Start your journey") {

                }
                .padding()
                .frame(maxWidth: .infinity)
                .cornerRadius(99)
                .background(Color.white)
                .foregroundStyle(.black)
                .padding(.bottom, 120)
            }
        }
    }
}
#Preview {
    fullBgImg()
}
