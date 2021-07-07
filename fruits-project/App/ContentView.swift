//
//  ContentView.swift
//  fruits-project
//
//  Created by Reinaldo on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK : Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK : Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item))
                    {
                        FruitsRowView(fruit: item)
                            .padding(.vertical,4)
                        
                    }
                    
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

// MARK: Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
