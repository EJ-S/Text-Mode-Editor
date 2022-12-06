//
//  ContentView.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI


func getPixelData(tile: UInt8) -> [UInt8] {
    var pixelData = [UInt8](repeating: 0, count: 192)
    for i in stride(from:0, to: 192, by: 3) {
        if i % 2 == 0 {
            pixelData[i] = 46
            pixelData[i+1] = 67
            pixelData[i+2] = 255
        } else {
            pixelData[i] = 255
            pixelData[i+1] = 67
            pixelData[i+2] = 46
        }
    }
    return pixelData
}


func MakeImage(tile: UInt8) -> CGImage {
    let height = 8
    let width = 8
    let numComponents = 3
    let numBytes = height * width * numComponents
    let pixelData = getPixelData(tile: tile)
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
    @State private var primary = Color.white
    @State private var accent = Color.black

    
    var body: some View {
        Image(MakeImage(tile: 32), scale: (1/3), label: Text(""))
            .interpolation(Image.Interpolation.none)
        HStack {
            Button(action: {
                self.showingTileSelect.toggle()
            }) {
                Text("Select Tile")
            }.sheet(isPresented: $showingTileSelect) {
                TileSelectView()
            }.buttonStyle(.borderedProminent)
            ColorPicker("Primary", selection: $primary)
            ColorPicker("Accent", selection: $accent)
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
        .padding(10)
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
