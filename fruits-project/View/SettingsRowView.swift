//
//  SettingsRowView.swift
//  fruits-project
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: Properties
    
    var name:String
    var content:String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: Body
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!).font(.footnote)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!,destination:URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

//MARK: Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name:"Developer",content: "Reinaldo")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name:"Website", linkLabel: "Ruang Aldo",linkDestination: "medium.com/ruang-aldo")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
