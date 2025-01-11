//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by user on 12/28/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        
    ZStack {
            
            
            // MARK: - 3. DEPTH
        Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            // MARK: - 2. LIGHT
        
        Color.colorGreenLight
            .cornerRadius(40)
            .offset(y:3)
            .opacity(0.85)
        
        
            // MARK: - 1. SURFACE
            
            
        
            LinearGradient(
                colors:[Color.customGreeenLight,
                        Color.customGreenmedium],
                startPoint: .top,
                endPoint: .bottom).cornerRadius(40)
        }
      
    }
}

#Preview {
    CustomBackgroundView().padding()
}
