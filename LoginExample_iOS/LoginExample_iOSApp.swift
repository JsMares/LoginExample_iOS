//
//  LoginExample_iOSApp.swift
//  LoginExample_iOS
//
//  Created by Jonathan Soto Mares on 06/06/25.
//

import SwiftUI

@main
struct LoginExample_iOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
