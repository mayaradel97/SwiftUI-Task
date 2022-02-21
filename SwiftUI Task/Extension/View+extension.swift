//
//  View+extension.swift
//  SwiftUI Task
//
//  Created by Mayar Adel on 2/21/22.
//

import SwiftUI
extension View
{
    func addTabItem(withText text: String, imageName: String) -> some View
    {
      return  self.tabItem
        {
        Image(systemName: imageName).imageScale(.large)
            Text(text)
      }
    }
}
