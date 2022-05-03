//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Alexander on 03.05.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]

    var body: some View {
        NavigationView {
            List(persons, id: \.phoneNumber) { person in
                NavigationLink(person.fullName) {
                    DetailedContactView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
        .navigationViewStyle(.stack)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getPersons())
    }
}
