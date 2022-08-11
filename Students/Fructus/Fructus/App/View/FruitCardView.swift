//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rafael Fernandez on 8/11/22.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //MARK: - FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 :0.6)
                
                //MARK: - FRUIT TITLE
                Text("blueburry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15),
                            radius: 200, x: 2, y: 2)
                //MARK: - HEADLINE
                Text("blueberry are sweet, nutritions and wildly popular fruit all over the world")
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
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .ignoresSafeArea()
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
