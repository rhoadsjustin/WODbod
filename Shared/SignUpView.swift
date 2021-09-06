//
//  SignUpView.swift
//  WODbod
//
//  Created by Justin Rhoads on 9/6/21.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    @State var userData = UserData.Data()

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List {
            Section(header: Text("Personal Info")) {
                TextField("First Name", text: $userData.firstName)
                TextField("Last Name", text: $userData.firstName)
            }
                Section(header: Text("Physical Measurements")) {
                    HStack {
                        TextField("Height (in cm)", text: $userData.height)
                            .padding()
                        TextField("weight (in kg)", text: $userData.weight)
                            .padding()
                        TextField("age", text: $userData.age)
                            .padding()
                    }
                }
            }
        .listStyle(InsetGroupedListStyle())
    }
}
