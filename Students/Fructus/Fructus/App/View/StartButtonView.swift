//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        Button {
            print("exit on boarding")
        } label: {
            HStack(spacing: 8) {
                Text("start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//MARK: - HSTACK
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
