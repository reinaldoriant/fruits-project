//
//  FruitDetailView.swift
//  fruits-project
//
//  Created by Reinaldo Riant on 07/07/21.
//

import SwiftUI

struct FruitDetailView: View {
    // Mark: Properties
    
    var fruit: Fruit
    
    // Mark: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators:false){
                VStack(alignment:.center,spacing:20){
                    //Header
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        FruitNutrients(fruit: fruit)
                        
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//:Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640, alignment: .center)
                }//: Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:scrollview
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
        }//:navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
