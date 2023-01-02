//
//  Text_Mode_EditorApp.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI

@main
struct Text_Mode_EditorApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
