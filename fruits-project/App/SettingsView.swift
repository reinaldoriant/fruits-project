//
//  SettingsView.swift
//  fruits-project
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    //MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators:false){
                VStack(spacing: 20) {
                    //MARK: Section 1
                    GroupBox(
                        label:SettingLabelView(labelText: "Fruits", labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9).padding(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    //MARK: Section 2
                    
                    //MARK: Section 3
                    GroupBox(
                        label:SettingLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        Divider().padding(.vertical,4)
                
                    }
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"))
                .navigationBarItems(trailing: Button(action:{ presentationMode.wrappedValue.dismiss()}){
                    Image(systemName: "xmark")
                    
                })
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

//MARK: Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
