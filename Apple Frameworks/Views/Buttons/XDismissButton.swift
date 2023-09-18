//
//  XDismissButton.swift
//  Apple Frameworks
//
//  Created by Xursandbek Qambaraliyev on 18/09/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDelailView: Bool
    
    var body: some View {
        HStack {
            
            Spacer()
            Button {
                isShowingDelailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDelailView: .constant(false))
    }
}
