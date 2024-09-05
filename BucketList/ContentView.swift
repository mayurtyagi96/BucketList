//
//  ContentView.swift
//  BucketList
//
//  Created by Mayur  on 04/09/24.
//

import SwiftUI

struct User: Identifiable, Comparable{
    var id = UUID()
    var firstName: String
    var lastName: String
    
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    var user = [
        User(firstName: "Mayur", lastName: "A"),
        User(firstName: "Manu", lastName: "C"),
        User(firstName: "Mayur", lastName: "B")
    ].sorted()
    
    var body: some View {
        List(user){ user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
}

#Preview {
    ContentView()
}
