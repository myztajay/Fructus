//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { fruit in
                FruitCardView()
            }
            
        } //MARK: - TAB
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
       
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
