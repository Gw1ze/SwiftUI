//
//  ContentView.swift
//  Context menu
//
//  Created by Федот Михайлов on 13.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("IMG_0529")
            .resizable()
            .frame(height: 300)
            .cornerRadius(30)
            .padding()
            .contextMenu{
                VStack{
                    Button(action: {
                        print("IMG_0529")
                    }){
                        HStack{
                            Image(systemName: "doc.on.doc")
                            Text("Copy")
                        }
                    }
                    Button(action: {
                        print("Share")
                    }){
                        HStack{
                            Image(systemName: "square.and.arrow.up")
                            Text("Share")
                        }
                    }

                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
