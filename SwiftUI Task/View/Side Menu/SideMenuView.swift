//
//  SideMenuView.swift
//  SwiftUI Task
//
//  Created by Mayar Adel on 2/21/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack{
            Text("Account")
            Divider()
                .padding(.bottom,10)
            List(Constant.menuItems)
            {
                item in
                //add navigation link
                VStack
                {
                    HStack
                    {
                        Image(systemName: item.imageName)
                        Text(item.itemName)
                    }
                }
                
            }
            
            .listStyle(PlainListStyle())
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
