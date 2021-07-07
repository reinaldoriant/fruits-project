//
//  ContentView.swift
//  fruits-project
//
//  Created by Reinaldo on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK : Properties
    @State private var isShowingSettings: Bool = false
    
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
            .navigationBarItems(
                trailing: Button(action:{
                    isShowingSettings=true
                }){
                    Image(systemName: "slider.horizontal.3")
                }//:Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                })
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
