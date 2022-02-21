//
//  ContentView.swift
//  SwiftUI Task
//
//  Created by Mayar Adel on 2/21/22.
//

import SwiftUI
struct ContentView: View
{
    @State private var showSideMenu: Bool = false
    fileprivate func showTabView() -> some View {
        return TabView{
            HomePageView()
                .onTapGesture(perform: {
                showSideMenu = false
            })
          .addTabItem(withText:"Home",imageName:"house")
            CategoriesView()
                .onTapGesture(perform: {
                showSideMenu = false
            })
            .addTabItem(withText:"Categories",imageName:"list.bullet")
            CartView()
                .onTapGesture(perform: {
                showSideMenu = false
            })
                .addTabItem(withText:"Cart",imageName:"bag")
            
        }
        .accentColor(.green)
    }
    
    fileprivate func accountButton() -> some View {
        return Button(action:
                        {
                            showSideMenu.toggle()
                            
                        },
                      label: {
                        Image(systemName: "person.circle.fill").imageScale(.large)
                      }
        )
        
        .accentColor(.green)
        
    }
    
    fileprivate func showSideMenuView() -> some View {
        return SideMenuView()
            .padding(.top, 30)
            .offset(x: showSideMenu ? 0 : UIScreen.main.bounds.width)
            .animation(.easeInOut(duration: 0.4), value: showSideMenu)
     
    }
    
    var body: some View{
        NavigationView
        {
        
            ZStack{
                showTabView()
                GeometryReader{
                    geometry in
                    showSideMenuView().frame(width:geometry.size.width/2)
                }
            }
            
            .navigationBarHidden(showSideMenu)
            .navigationBarTitle("Application", displayMode: .inline)
            .navigationBarItems(
            leading: accountButton()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
