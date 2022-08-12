//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https:www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SourceLinkView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            .padding()
            SourceLinkView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
