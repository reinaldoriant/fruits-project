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
    var contents:String
    
    //MARK: Body
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Text(name)
                .foregroundColor(Color.gray)
            Spacer()
            Text(contents).font(.footnote)
        }
    }
}

//MARK: Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name:"Developer",contents: "Reinaldo")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
