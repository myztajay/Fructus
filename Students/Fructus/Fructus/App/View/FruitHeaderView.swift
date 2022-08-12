//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15)
                        , radius: 8, x: 9, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }//MARK: - ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
