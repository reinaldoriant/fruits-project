//
//  fruits_projectApp.swift
//  fruits-project
//
//  Created by Reinaldo Riant on 05/07/21.
//

import SwiftUI

@main
struct fruits_projectApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            }
            else{
                ContentView()
            }
            
        }
    }
}
