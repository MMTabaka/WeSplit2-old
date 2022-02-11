//
//  ContentView.swift
//  WeSplit
//
//  Created by Milosz Tabaka on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    let names = ["Harry", "Hermione", "Ron"]
    @State private var selected = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your name", selection: $selected) {
                    ForEach(names, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
