//
//  FruitNutrients.swift
//  fruits-project
//
//  Created by Reinaldo Riant on 07/07/21.
//

import SwiftUI

struct FruitNutrients: View {
    //MARK: Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamin","Minerals"]
    
    //MARK: Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}
//MARK: Preview
struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients(fruit: fruitsData[0])
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
