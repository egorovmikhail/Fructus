//
//  SettingsView.swift
//  Fructus
//
//  Created by Михаил Егоров on 10.09.2020.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES

    @Environment(\.presentationMode) var presentationMode

    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            HStack {
                                Text("Fructus".uppercased()).fontWeight(.bold)
                                Spacer()
                                Image(systemName: "info.circle")
                            }
                    ){
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
