//
//  ContentView.swift
//  BucketList
//
//  Created by Mayur  on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let url = URL.documentsDirectory.appending(path: "mayur.text")
        Button("Save Data"){
            let data = Data("Hello Documents this file is edited".utf8)
            do{
                try data.write(to: url, options: [.atomic, .completeFileProtection])
            }catch{
                print(error.localizedDescription)
            }
            
        }
        Button("Get Data"){
            do{
                let input = try String(contentsOf: url)
                print(input)
            }catch{
                print(error.localizedDescription)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
