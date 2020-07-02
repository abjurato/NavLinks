//
//  ContentView.swift
//  NavLinks
//
//  Created by Anatoly Rosencrantz on 02/07/2020.
//

import SwiftUI

struct PageView: View {
    @EnvironmentObject var deeplinker: Deeplinker
    let title: Int
    
    @State var selection: Int?
    
    var body: some View {
        VStack {
            Text("Current page: \(self.title)")
            
            List {
                ForEach(nextPages, id: \.self) { element in
                    NavigationLink(destination: PageView(title: element, selection: self.deeplinker.pageAfter(currentPage: element)),
                                   tag: element,
                                   selection: self.$selection,
                                   label: { Text("Go to \(element)") })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(title: 0).environmentObject(Deeplinker())
    }
}
