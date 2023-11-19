//
//  ContentView.swift
//  AppListNav
//
//  Created by Mohammed Yarroum on 2023-11-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var addname = ""
    
    @State var people = [""]
    
    @State var letsgo = false
    
    var body: some View {
        
        
        NavigationStack {
            
         
            VStack {
                
                
    HStack {
                    
                    TextField("Skriv namn", text: $addname)
                    
                    Button(action: {
                        people.append(addname)
                        addname = ""
                    }, label: {
                        Text("Add")
                    })
                    
                    
                } // HStack
                
                List(people, id: \.self) { person in
                    
                    NavigationLink(destination: ReadmoreView(thename: person)) {
                        PersonRowView(personname: person)
                    }
                   
                }
                
                Button(action: {
                    people = []
                }) {
                    Text("Nollställ")
                }
                
            
                
            } // VStack
            .padding()
            .navigationTitle("Välkommen")
            .navigationDestination(isPresented: $letsgo) {
                ReadmoreView(thename: addname)
                
            }
        
            
        } // Navigation
        
        
    } // Body
    
    
    
} // View

#Preview {
    ContentView()
}
