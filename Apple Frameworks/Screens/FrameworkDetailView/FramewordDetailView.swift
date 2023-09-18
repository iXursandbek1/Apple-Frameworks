//
//  FramewordDetailView.swift
//  Apple Frameworks
//
//  Created by Xursandbek Qambaraliyev on 15/09/23.
//

import SwiftUI

struct FramewordDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundColor(.white)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FramewordDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FramewordDetailView(framework: MockData.sampleFramework)
    }
}
