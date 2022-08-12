//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    //MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        //MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //MARK: - SUBHEADING
                        Text("Learn more about \(fruit.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[0])
                        //MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //MARK: - LINK
                        SourceLinkView()
                            .padding(.bottom, 40)
                    } //MARK: - VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //MARK: - VSTACK
            }//MARK: - SCROLL
            .ignoresSafeArea()
        } //MARK: - NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.light)
            .previewLayout(.sizeThatFits)
            .ignoresSafeArea()
    }
}
