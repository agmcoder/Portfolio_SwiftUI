//
//  GifImage.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 28/4/22.
//
import WebKit
import Foundation
import SwiftUI


struct GifImage : UIViewRepresentable{
    
    private let name:String
    init(_ name : String){
        self.name=name
        
    }
    
    func makeUIView(context: Context) -> some WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webView.load(
            data,mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.reload()
    }
}
struct GifImage_Previews:PreviewProvider{
    static var previews: some View{
        GifImage("faceidgif")
    }
}
