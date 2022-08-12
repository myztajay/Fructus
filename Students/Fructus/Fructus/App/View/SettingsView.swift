//
//  SettingView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            LabelView(labelText: "Fructus", labelImage: "info.circle")
                            ) {
                                Divider()
                                    .padding(.vertical, 4)
                                HStack(alignment: .center, spacing: 10) {
                                    Image("logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(9)
                                    Text("Commercial blueberries—both wild (lowbush) and cultivated (highbush)—are all native to North America. The highbush varieties were introduced into Europe during the 1930s.")
                                        .font(.footnote)
                                }
                    }
                    //MARK: - SECTION 2
                    GroupBox(
                        label:
                            LabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("customize this shit")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            
                            if isOnboarding {
                                Text("Restarted!".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                       

                    //MARK: - SECTION 3
                    GroupBox(
                        label: LabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "John")
                        SettingsRowView(name: "Designer", content: "a man")
                        SettingsRowView(name: "compatibility", content: "14.0")
                        SettingsRowView(name: "website", linkLabel: "google.com", LinkDestination: "google.com")
                        
                    }
                }//MARK: - VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
            }//MARK: - SCROLLVIEW
        }//MARK: - NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
