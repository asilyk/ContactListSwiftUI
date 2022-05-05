//
//  DetailedContactView.swift
//  ContactListSwiftUI
//
//  Created by Alexander on 03.05.2022.
//

import SwiftUI

struct DetailedContactView: View {
    let person: Person

    var body: some View {
        List {
            PersonImageView()

            Label(String(person.phoneNumber), systemImage: "phone")

            Label(person.email, systemImage: "tray")
        }
        .listStyle(.plain)
        .navigationTitle(person.fullName)
    }
}

struct PersonImageView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
        }
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(
            person: Person.getPersons().first!
        )
    }
}
