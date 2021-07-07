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
        Text(fruit.title)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
