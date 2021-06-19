//
//  CustomHeaderView.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 28/05/21.
//

import SwiftUI

struct CustomHeaderView: View {
    @State private var text = "Some Textfield"

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // on click code
                }, label: {
                    Image(systemName: "star.fill")
                })
                .padding()
                
                TextField("", text: $text) { (onEdit) in
                    print("On Edit: \(onEdit)")
                } onCommit: {
                    print("On Commit")
                }
                .background(Color.red)
                .padding()

                Button(action: {
                    // on click code
                }, label: {
                    Image(systemName: "star.fill")
                })
                .padding()
            
                Spacer()
            }
            .background(Color.yellow)
            
            Spacer()
        }
    }
}

struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView()
    }
}
