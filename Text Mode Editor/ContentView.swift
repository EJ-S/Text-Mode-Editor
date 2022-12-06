//
//  ContentView.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI


let tiles = [[0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,1,1,1,0,0,1,1,0,1,1,1,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,0,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,1,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,
              0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,1,1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,
              0,0,0,0,1,1,0,0,0,1,1,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,1,1,0,0,0,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,
              0,1,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,0,1,1,0,1,1,1,0,1,1,1,0,1,1,1,1,1,1,1,0,1,1,0,1,0,1,1,
              0,1,1,0,0,0,1,1,0,1,1,0,0,0,1,1,0,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,1,0,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,
              0,1,1,0,1,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,0,0,
              0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,
              0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,1,1,1,0,0,
              0,1,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,1,1,1,1,0,0,
              0,0,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,
              0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,
              0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,
              0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,0,1,1,0,1,1,0,0,0,1,1,0,1,1,0,0,0,1,1,0,1,1,0,1,0,1,1,
              0,1,1,1,1,1,1,1,0,1,1,1,0,1,1,1,0,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,0,0,0,1,1,0,0,0,
              0,0,1,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0],
             [0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0,0,1,1,1,1,0,0,
              0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0],
             [0,1,1,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,
              0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,
              0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,1,1,0,0,0,0,0,1,0,0,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,0,0,
              0,0,1,1,0,0,0,0,0,1,1,0,0,0,1,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,
              0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,0,
              0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,1,1,
              0,1,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0]]

class ColorsChosen: ObservableObject {
    @Published var front = Color.white
    @Published var back = Color.black
}

class TileChosen: ObservableObject {
    @Published var tile = 0
}

class TileInfo {
    var tile = 0
    var front = Color.white
    var back = Color.black
}


func getPixelData(tile: UInt8, front: Color, back: Color) -> [UInt8] {
    var pixelData = [UInt8](repeating: 0, count: 192)
    for i in stride(from:0, to: 192, by: 3) {
        if tiles[Int(tile)][i/3] % 2 == 1 {
            pixelData[i] = UInt8(UIColor(front).cgColor.components![0]*255)
            pixelData[i+1] = UInt8(UIColor(front).cgColor.components![1]*255)
            pixelData[i+2] = UInt8(UIColor(front).cgColor.components![2]*255)
        } else {
            pixelData[i] = UInt8(UIColor(back).cgColor.components![0]*255)
            pixelData[i+1] = UInt8(UIColor(back).cgColor.components![1]*255)
            pixelData[i+2] = UInt8(UIColor(back).cgColor.components![2]*255)
        }
    }
    return pixelData
}


func MakeImage(tile: UInt8, front: Color, back: Color) -> CGImage {
    let height = 8
    let width = 8
    let numComponents = 3
    let numBytes = height * width * numComponents
    let pixelData = getPixelData(tile: tile, front: front, back: back)
    let colorspace = CGColorSpaceCreateDeviceRGB()
    let rgbData = CFDataCreate(nil, pixelData, numBytes)!
    let provider = CGDataProvider(data: rgbData)!
    let rgbImageRef = CGImage(width: width,
                              height: height,
                              bitsPerComponent: 8,
                              bitsPerPixel: 8 * numComponents,
                              bytesPerRow: width * numComponents,
                              space: colorspace,
                              bitmapInfo: CGBitmapInfo(rawValue: 0),
                              provider: provider,
                              decode: nil,
                              shouldInterpolate: true,
                              intent: CGColorRenderingIntent.defaultIntent)!
    return rgbImageRef
}


struct ContentView: View {
    @State var showingTileSelect = false
    @StateObject private var colors = ColorsChosen()
    @StateObject private var tileChosen = TileChosen()
    private var tileArray: [TileInfo] = [TileInfo](repeating: TileInfo(), count: 64)
    
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    self.showingTileSelect.toggle()
                }) {
                    Text("Select Tile")
                }.sheet(isPresented: $showingTileSelect) {
                    TileSelectView().environmentObject(colors).environmentObject(tileChosen)
                }.buttonStyle(.borderedProminent)
                ColorPicker("Primary", selection: $colors.front)
                ColorPicker("Accent", selection: $colors.back)
            }.frame(maxWidth: .infinity,
                    maxHeight: 25,
                    alignment: .top)
            HStack {
                Image(MakeImage(tile: UInt8(tileChosen.tile),
                                front: colors.front,
                                back: colors.back),
                      scale: (1/3),
                      label: Text("button"))
                .interpolation(Image.Interpolation.none)
                Text("Current Tile")
            }
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading)
        .padding(10)
        HStack {
            ForEach(0..<8) { i in
                Image(MakeImage(tile: UInt8(tileArray[i].tile),
                                front: tileArray[i].front,
                                back: tileArray[i].back),
                      scale: (1/3),
                      label: Text("button"))
                .interpolation(Image.Interpolation.none)
            }
        }.padding(0)
        Spacer(minLength: 300)
    }
}

struct TileSelectView: View {
    @EnvironmentObject private var colors: ColorsChosen
    @EnvironmentObject private var tileChosen: TileChosen
    var body: some View {
        VStack{
            ForEach(0..<4) { j in
                HStack{
                    ForEach(0..<8) { t in
                        Button(action: {
                            tileChosen.tile = j*8+t
                        }) {
                            Image(MakeImage(tile: UInt8(j*8+t),
                                            front: colors.front,
                                            back: colors.back),
                                  scale: (1/3),
                                  label: Text(""))
                            .interpolation(Image.Interpolation.none)
                        }
                    }
                }.padding(0)
            }
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading)
        .padding(10)
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
