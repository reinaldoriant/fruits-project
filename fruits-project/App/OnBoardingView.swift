//
//  OnBoardingView.swift
//  fruits-project
//
//  Created by TI Digital on 05/07/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitCardView()
            }//:LOOP
        }//:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

//MARK: Previews
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
