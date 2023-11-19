//
//  PersonRowView.swift
//  AppListNav
//
//  Created by Mohammed Yarroum on 2023-11-19.
//

import SwiftUI

struct PersonRowView: View {
    
    var personname = "XYZ"
    
    var body: some View {
    
        HStack {
            Text("Name")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text(personname)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }

        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.yellow/*@END_MENU_TOKEN@*/)
        
        
    }
}

#Preview {
    PersonRowView()
}
