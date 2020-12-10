//
//  TabBarView.swift
//
//  Created by Fritz Heider  on 09/10/2020.
//  Copyright © 2020 NexThings. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
            }
            .tag(0)
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Feed")
            }
            
            NavigationView {
                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
            }
            .tag(1)
            .tabItem {
                Image("shopping-cart-icon")
                Text("Connx")
            }
            
            NavigationView {
                     AccountView()
                  }
                   .tag(2)
                    .tabItem {
                    Image("profile-glyph-icon")
                    Text("Account")
                }
        }
    }
}



