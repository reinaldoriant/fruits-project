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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    
                    GroupBox(label:  SettingLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        
                        Divider().padding(.vertical,4)
                        
                        Text("if you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous)))
                        
                    }
                    
                    //MARK: Section 3
                    GroupBox(
                        label:SettingLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        SettingsRowView(name:"Developer",content: "Reinaldo Riant Kurnia Perdana")
                        SettingsRowView(name: "Company",content: "Harian Kompas")
                        SettingsRowView(name: "Compatibility",content: "iOS 14")
                        SettingsRowView(name: "Website",linkLabel: "Kompas.id",linkDestination: "kompas.id")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version",content: "1.1.0")
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
