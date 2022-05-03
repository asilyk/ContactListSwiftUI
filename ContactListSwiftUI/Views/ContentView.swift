//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Alexander on 03.05.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()

    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }

            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
