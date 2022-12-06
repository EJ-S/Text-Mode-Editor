//
//  ContentView.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 12/4/22.
//

import SwiftUI


func getPixelData(tile: UInt8, front: Color, back: Color) -> [UInt8] {
    var pixelData = [UInt8](repeating: 0, count: 192)
    for i in stride(from:0, to: 192, by: 3) {
        if i % 2 == 0 {
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
    @State private var front = Color.white
    @State private var back = Color.black

    
    var body: some View {
        Image(MakeImage(tile: 32,
                        front: front,
                        back: back),
              scale: (1/3),
              label: Text(""))
            .interpolation(Image.Interpolation.none)
        HStack {
            Button(action: {
                self.showingTileSelect.toggle()
            }) {
                Text("Select Tile")
            }.sheet(isPresented: $showingTileSelect) {
                TileSelectView()
            }.buttonStyle(.borderedProminent)
            ColorPicker("Primary", selection: $front)
            ColorPicker("Accent", selection: $back)
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
