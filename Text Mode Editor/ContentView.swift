//
//  ContentView.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var showingTileSelect = false
    @State private var foregoundColor = Color.white
    @State private var backgroundColor = Color.black
    private var tile = "Cool"

    var body: some View {
        HStack {
            Button(action: {
                self.showingTileSelect.toggle()
            }) {
                Text("Select Tile")
            }.sheet(isPresented: $showingTileSelect) {
                TileSelectView()
            }.buttonStyle(.borderedProminent)
            ColorPicker("Primary", selection: $foregoundColor)
            ColorPicker("Accent", selection: $backgroundColor)
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading)
        .padding(10)
    }
}

struct TileSelectView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    print("32 pressed")
                }) {
                    VStack{
                        Image("32")
                            .resizable()
                            .scaledToFill()
                    }.frame(width: 32,
                            height: 32,
                            alignment: .topLeading)
                }
                Button(action: {
                    print("160 pressed")
                }) {
                    VStack{
                        Image("160")
                            .resizable()
                            .scaledToFill()
                    }.frame(width: 32,
                            height: 32,
                            alignment: .topLeading)
                }
            }.padding(1)
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading)
        .padding(1)
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
