//
//  ContentView.swift
//  FoodMenu
//
//  Created by Furkan Gözübüyük on 2.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            VStack{
                Image("yemekresim").resizable().frame(width:ekranGenislik,height: ekranYukseklik/3)
                
                VStack(alignment: .leading){
                    Text("Köfte").font(.system(size:30)).foregroundColor(.red)
                    HStack{
                        Text("Izgaraya Uygun")
                        Spacer()
                        Text("10 Ocak")
                    }
                }.padding()
                
                Text("Köfte harcını hazırlamak için, soğanları rendeleyin ve maydonazları ince ince kıyın. İsterseniz, bir diş sarımsak da ekleyebilirsiniz.").multilineTextAlignment(.center).padding([.leading,.trailing],50)
                
                
                Spacer()
                
                HStack(spacing: 0){
                    Button("Beğen"){
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2,height: ekranYukseklik/12)
                        .background(.yellow)
                    
                    
                    Button("Yorum Yap"){
                    }.foregroundColor(.black)
                        .frame(width: ekranGenislik/2,height: ekranYukseklik/12)
                        .background(.orange)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
