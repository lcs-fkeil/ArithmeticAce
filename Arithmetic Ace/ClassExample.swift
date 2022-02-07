//
//  ClassExample.swift
//  Arithmetic Ace
//
//  Created by Berk Bozkurt on 2022-02-07.
//

import SwiftUI

struct ClassExample: View {
    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                Text("✕")
                
                Spacer()
                VStack {
                    Text("5")
                    Text("6")
                }
            }
           
            
            
            Divider()
            
            HStack {
                
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
                Text("30")
            }
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))
        
    }
}

struct ClassExample_Previews: PreviewProvider {
    static var previews: some View {
        ClassExample()
    }
}
