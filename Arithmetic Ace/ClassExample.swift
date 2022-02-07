//
//  ClassExample.swift
//  Arithmetic Ace
//
//  Created by Berk Bozkurt on 2022-02-07.
//

import SwiftUI

struct ClassExample: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("✕")
                
                Spacer()
                VStack {
                    Text("5")
                    Text("6")
                }
            }
            .font(.system(size: 72))
            .padding()
            Divider()

        }
      
    }
}

struct ClassExample_Previews: PreviewProvider {
    static var previews: some View {
        ClassExample()
    }
}
