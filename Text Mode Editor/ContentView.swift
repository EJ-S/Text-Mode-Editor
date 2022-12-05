//
//  ContentView.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var showingTileSelect = false

    var body: some View {
        HStack {
            Button(action: {
                self.showingTileSelect.toggle()
            }) {
                Text("Select Tile")
            }.sheet(isPresented: $showingTileSelect) {
                TileSelectView()
            }
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading)
        .padding(10)
    }
}

struct TileSelectView: View {
    var body: some View {
        Text("This is the Tile Select Screen")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
