//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Alexander on 03.05.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]

    var body: some View {
        NavigationView {
            List(persons, id: \.phoneNumber) { person in
                Section(person.fullName) {
                    ContactRowView(
                        contact: String(person.phoneNumber),
                        systemImage: "phone"
                    )

                    ContactRowView(
                        contact: person.email,
                        systemImage: "tray"
                    )
                }
            }
            .navigationTitle("Contact List")
        }
        .navigationViewStyle(.stack)
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersons())
    }
}
