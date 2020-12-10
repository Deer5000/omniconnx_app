//
//  AccountView.swift
//
//  Created by Fritz Heider  on 09/10/2020.
//  Copyright © 2020 NexThings. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var username: String = "James"
    @State var selectedCurrency: Int = 0
    @State var currencyArray: [String] = ["Iternships", "Groups", "Meetings"]
    
    @State var selectedPaymentMethod: Int = 1
    @State var paymentMethodArray: [String] = ["Residency", "Work Scholar", "Team"]
    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("3")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                Text("Fritz Appleseed")
                    .font(.system(size: 20))
                    
                Form {
                    
                    Section(header: Text("Current Connx")) {
                        Picker(selection: self.$selectedCurrency, label: Text("Gideon Crawly")) {
                                         ForEach(0 ..< self.currencyArray.count) {
                                                  Text(self.currencyArray[$0]).tag($0)
                                            }
                        }
                        
                        Picker(selection: self.$selectedPaymentMethod, label: Text("Sofiya H")) {
                                  ForEach(0 ..< self.paymentMethodArray.count) {
                                       Text(self.paymentMethodArray[$0]).tag($0)
                                     }
                        }
                        Button(action: {
                            print("Button tapped")
                            
                        }) {
                            
                            if (self.paymentMethodArray[self.selectedPaymentMethod]) == "2 nerw messages" {
                                Text("Patrick")
                                
                            } else {
                                Text("Patrick H")
                            }
                        }

                    }
                    Section(header: Text("Upcoming Events")) {
                       NavigationLink(destination: Text("Profile Info")) {
                            Text("Upcoming Events")
                        }
                       
                        NavigationLink(destination: Text("Upcomoing Assignments")) {
                            Text("Upcoming Intertnships")
                        }
                    }
                    
                    Section(footer: Text("Allow push notifications to get latest Internships")) {
                        Toggle(isOn: self.$locationUsage) {
                              Text("Location Usage")
                        }
                        Toggle(isOn: self.$notificationToggle) {
                            Text("Notifications")
                        }
                    }
                        
            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
            .navigationBarTitle("Account Overview")
         }
        }
    }
 }

