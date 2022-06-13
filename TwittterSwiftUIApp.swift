//
//  TwittterSwiftUIApp.swift
//  TwittterSwiftUI
//
//  Created by Ahmet Ali ÇETİN on 22.05.2022.
//

import SwiftUI
import Firebase

@main
struct TwittterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
