//
//  ContentView.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            CustomTabView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//tab views
struct Email: View {
    var body: some View{
        VStack{
            Text("Email")
        }
    }
}

struct Folder: View {
    var body: some View{
        VStack{
            Text("Folder")
        }
    }
}

struct Settings: View {
    var body: some View{
        VStack{
            Text("Settings")
        }
    }
}

let tabs:[Tab] = [
    Tab(name: "Home", image: "house"),
    Tab(name: "Email", image: "envelope.fill"),
    Tab(name: "Folder", image: "folder"),
    Tab(name: "Settings", image: "gearshape")
]

//both images and color name are the same
var courses = [
    Course(name: "Coding", numCourses: 12, asset: "coding"),
    Course(name: "Trading", numCourses: 12, asset: "trading"),
    Course(name: "Cooking", numCourses: 12, asset: "cooking"),
    Course(name: "Marketing", numCourses: 12, asset: "marketing"),
    Course(name: "UI/UX", numCourses: 12, asset: "ux"),
]

