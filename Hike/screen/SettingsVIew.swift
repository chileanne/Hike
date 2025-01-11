//
//  SettingsVIew.swift
//  Hike
//
//  Created by user on 12/30/24.
//

import SwiftUI

struct SettingsVIew: View {
    // MARK: - PROPERTIES
    private let alternateAppIcons: [String] = [
        
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire",
        
    ]
    
    
    
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
        
            Section{
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading").font(.system(size: 80, weight: .black))
                    
                    
                    VStack(spacing: -10) {
                        Text("HIKE")
                            .font(.system(size: 66, weight: .black))
                        
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    
                    Image(systemName: "laurel.trailing").font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }.foregroundStyle(
                    LinearGradient(colors: [.customGrayLight,.customGreenmedium,.customGreenDark], startPoint: .top, endPoint: .bottom)
                ).padding(.top, 8)
                
                VStack(spacing: 8 ) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    
                    
                    Text("The hike which looks gorgeous in photos but is even berrer once you are actually there. The hike that you hope to do again someday.")
                        .font(.footnote)
                        .italic()
                    
                    
                    Text("Dust off the boots! it's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenmedium)
                    
                    
                }.multilineTextAlignment(.center)
                    .padding(.bottom,16)
                    .frame(maxWidth: .infinity)
                
                
              
            } //: Header
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            Section(header: Text("Alternate Icons")){
                
      
                  
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack (spacing: 12) {
                                ForEach(alternateAppIcons.indices, id: \.self) { item in
                                    Button{
                                        UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){ error in
                                            
                                            if error != nil {
                                                print("failed")
                                            }else{
                                                print("sucess")
                                            }
                                            
                                        }
                                    }label: {
                                        Image("\(alternateAppIcons[item])-Preview")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(16)
                                    }.buttonStyle(.borderless)
                                }
                            }
                        }
                    
                
              
                
                
                Text("Chosse your favourite App icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12.0)
                
                
                
                
                
            }.listRowSeparator(.hidden)
            
            
            // MARK: - SECTION: ABOUT
        
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                   Spacer()
                    Text("COPYRIGHT * NO RIGHTS RESEVERD")
                    Spacer()
                }.padding(.vertical,8)
                
            ){
                CustomListRowView(rowLabel: "Application", rowIcon:"apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon:"info.circle", rowContent: "IOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon:"swift", rowContent: "SWIFT", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Developer", rowIcon:"lasso", rowContent: "Cub360sys", rowTintColor: .cyan)
                
                CustomListRowView(rowLabel: "Nationality", rowIcon:"flag", rowContent: "NIGERIA", rowTintColor: .green)
                
                
                CustomListRowView(rowLabel: "stack", rowIcon:"square.3.stack.3d.middle.filled", rowContent: "Dart, Kotlin, Swift, Java", rowTintColor: .purple)
                
                
                CustomListRowView(rowLabel: "Name", rowIcon:"lasso", rowTintColor: .pink,
                                  rowLinkLabe: "Ashawo Japanese",
                
                                  rowLinkDestination: "www.google.com")
            }
        }
     
    }
}

#Preview {
    SettingsVIew()
}
