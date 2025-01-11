//
//  CustomCircleView.swift
//  Hike
//
//  Created by user on 12/29/24.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.customIndigoMedium,.customSalmonLight], startPoint: isAnimateGradient ? .bottomLeading: .topLeading,
                                   endPoint:  isAnimateGradient ? .topTrailing : .bottomTrailing)
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0)
                        .repeatForever(autoreverses: true)){
                            isAnimateGradient.toggle()
                        }
                }
                
            
            MotionAnimationView()
            
        }.frame(
            width: 256,
            height: 256
        )
        
    }
}

#Preview {
    CustomCircleView()
}
