//
//  ContentView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }//MARK: - LIST
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings.toggle()
                        
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                
            )
        } //MARK: - NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
