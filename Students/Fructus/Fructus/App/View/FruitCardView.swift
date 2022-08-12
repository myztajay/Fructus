//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //MARK: - FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 :0.6)
                
                //MARK: - FRUIT TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15),
                            radius: 200, x: 2, y: 2)
                //MARK: - HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //MARK: - START
                StartButtonView()
            }//MARK: - VSTACK
        }//MARK: - ZSTACK
        .onAppear{withAnimation(.easeOut(duration: 0.5), {
            isAnimating = true
        })}
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
