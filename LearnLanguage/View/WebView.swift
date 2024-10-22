//
//  WebView.swift
//  LearnLanguage
//
//  Created by David Winn on 10/22/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let data: String?
    let request: URLRequest?

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let data {
            uiView.loadHTMLString(data, baseURL: nil)
        } else if let request {
            uiView.load(request)
        }
    }
}
