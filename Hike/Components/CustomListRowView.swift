//
//  CustomListRowView.swift
//  Hike
//
//  Created by user on 1/2/25.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon : String
    @State var rowContent: String? = nil
    @State var rowTintColor : Color
    @State var rowLinkLabe : String? = nil
    @State var rowLinkDestination : String? = nil
    
    
    var body: some View {
        LabeledContent{
            if rowContent != nil{
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if(rowLinkLabe != nil && rowLinkDestination != nil){
                
                Link(rowLinkLabe!, destination: URL(
                    string: rowLinkDestination!
                )!).foregroundColor(.pink)
                    .fontWeight(.heavy)
                
            }else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius:8).frame(width: 30, height: 30).foregroundColor(rowTintColor)
                    
                    Image(systemName: rowIcon).foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Cub360", rowIcon:"lasso", rowTintColor: .pink,
                          rowLinkLabe: "Ashawo Japanese",
        
                          rowLinkDestination: "www.google.com")
    }
}
