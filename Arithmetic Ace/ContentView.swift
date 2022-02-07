//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Berk Bozkurt on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
            
            HStack{
                
                Text("X")
                    .padding()
                Spacer()
                VStack{
                    Text("5")
                    Text("6")
                }
                .padding()
            }
            
            
            HStack{
                Spacer()
                Text("5")
                   
                    .font(.title)
                    .bold()
                    .padding()
                
            }
            HStack {
                
                Text("X")
                    .font(.title)
                    .bold()
                    .padding()
                Spacer()
            }
            HStack {
                Spacer()
                Text("6")
                    .font(.title)
                    .bold()
                    .padding()
            }
            HStack{
                
                Text("Check mark")
                    .padding()
                Spacer()
                Text("30")
                    .font(.title)
                    .bold()
                    .padding()
            }
            Button(action:{ print("correct")
                
            }, label: {
                Text("New question")
            })
                .buttonStyle(.bordered)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
