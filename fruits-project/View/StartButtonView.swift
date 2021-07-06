//
//  StartButtonView.swift
//  fruits-project
//
//  Created by TI Digital on 05/07/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK : Properties
  
    
    //MARK : Body
    var body: some View {
        Button(action:{
            print("Exit the onboarding")
        }){
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }.padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }//: BUTTON
        .accentColor(Color.white)
    }
}
    //MARK : Previews
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
