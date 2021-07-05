//
//  FruitCardView.swift
//  fruits-project
//
//  Created by Reinaldo on 05/07/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK : Properties
    
    @State private var _isAnimating: Bool = false
    
    //MARK : Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15),radius: 8, x: 6 , y: 8)
                    .scaleEffect(_isAnimating ? 1.0 : 0.6)
                //FRUIT: Title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 2,x: 2,y: 2)
                //FRUIT: Headline
                Text("Blueberries are sweet, nutricious, and wildly popular fruit all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                //BUTTON: Start
                StartButtonView()
            }//: VSTACK
        }//: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                _isAnimating=true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors:[Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
    
}

//MARK : Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
