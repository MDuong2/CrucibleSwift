//
//  Mduong2sapplication1App.swift
//  Mduong2sapplication1

import SwiftUI

@main
struct Mduong2sapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            FirstGreetingView()
        }
    }
}
