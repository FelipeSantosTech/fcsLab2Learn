//
//  fullBgImg.swift
//  fcsLab2Learn
//
//  Created by Paulo Marcelo Santos on 02/03/26.
//

import SwiftUI

struct fullBgImg: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                // HERO
                ZStack(alignment: .bottom) {
                    
                    Image("darkbg_pullup")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .clipped()
                    
                    Color.black.opacity(0.4)
                    
                    // Bottom fade overlay
                    LinearGradient(
                        colors: [.black, .white.opacity(0.2)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: 180)
                    
                    VStack {
                        Text("Discipline")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 60)
                        
                        Spacer()
                        
                        Text("No one is coming to save you.")
                            .foregroundColor(.white)
                        
                        Button("Home screen") {}
                            .padding()
                            .frame(maxWidth: 360)
                            .background(Color.white)
                            .foregroundStyle(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 100))
                            .bold()
                            .font(.title2)
                            .padding(.bottom, 80)
                        
                        HStack{
                            Image
                            Text()
                            Image
                        }
                    }
                    .padding(.horizontal, 24)
                }
                .containerRelativeFrame(.vertical)
                
                
                // FADE
                LinearGradient(
                    colors: [.black, .black.opacity(0.9)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 150)
                
                
                // WHITE SECTION
                VStack(spacing: 20) {
                    Text("More Content Here")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.gray.opacity(0.1))
                            .frame(height: 120)
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 40)
                .padding(.bottom, 100)
                .background(Color.black.opacity(0.9))
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    fullBgImg()
}
