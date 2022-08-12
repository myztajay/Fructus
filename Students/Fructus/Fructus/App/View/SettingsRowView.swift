//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var LinkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Divider()
                    .padding(.vertical, 4)
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && LinkDestination != nil
                {
                    Link(linkLabel!, destination: URL(string: "https://\(LinkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
            SettingsRowView(name: "Website", linkLabel: "website", LinkDestination: "google.com")
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
