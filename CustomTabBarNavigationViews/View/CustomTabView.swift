//
//  CustomTabBar.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI


struct CustomTabView: View {
    
    @State var selectedTab: String = "Home"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            //using tab view for swipe gestures
            // if you dont need swipe gesture tab change means just -> use switch case to change views
            
            TabView(selection: $selectedTab,
                    content:  {
                        Home()
                            .tag("Home")
                        
                        Email()
                            .tag("Email")
                        
                        Folder()
                            .tag("Folder")
                        
                        Settings()
                            .tag("Settings")
                    })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea(.all, edges: .all)
            //for botom overflow
            
            
            HStack(spacing: 0){
                ForEach(tabs, id: \.name) { tab in
                    TabButton(image: tab.image, tagName: tab.name,selectedTab: $selectedTab)
                    //equal spacing
                    
                    if tab.name != tabs.last?.name {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 4, y: 4)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: -4, y: -4)
            .padding(.horizontal)
            //for smaller iphones
            .padding(.bottom, edge!.bottom == 0 ? 20 : 0)
        })
        .ignoresSafeArea(.keyboard, edges: .bottom) //ignoring tabview elevation
        .background(Color.black.opacity(0.05)
                        .ignoresSafeArea(.all, edges: .all))
        
    }
}


