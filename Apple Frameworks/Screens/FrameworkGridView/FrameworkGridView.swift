//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Xursandbek Qambaraliyev on 14/09/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍏 Framewoks")
            .navigationDestination(for: Framework.self) { framework in
                FramewordDetailView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

