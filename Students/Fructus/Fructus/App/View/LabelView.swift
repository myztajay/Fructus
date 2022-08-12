//
//  LabelView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct LabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
    
    struct LabelView_Previews: PreviewProvider {
        static var previews: some View {
            LabelView(labelText: "frutus", labelImage: "info.circle")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
