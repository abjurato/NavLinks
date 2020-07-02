//
//  RootView.swift
//  NavLinks
//
//  Created by Anatoly Rosencrantz on 02/07/2020.
//

import SwiftUI

struct RootView: View {
    @State var sheetPresented: Bool = false
    
    var body: some View {
        Button(action: {
            self.sheetPresented.toggle()
        }, label: {
            Text("Open the sheet")
        })
        .sheet(isPresented: self.$sheetPresented) {
            NavigationView {
                PageView(title: 0, selection: 1)
            }
            .environmentObject(Deeplinker())
        }
    }
}


struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
