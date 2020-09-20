//
//  ContentView.swift
//  WorkdayTracker
//
//  Created by Oded Golden on 20/09/2020.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        TabView{
            ListView().tabItem {
                Text("Days")
                Image(systemName: "list.bullet")
            }
            SettingsView().tabItem {
                Text("Settings")
                Image(systemName: "pencil")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
