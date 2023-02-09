//
//  DetailedView.swift
//  JSONDecoding
//
//  Created by Ikbal Demirdoven on 2023-02-08.
//

import SwiftUI

struct DetailedView: View {
    let person : Person
    var body: some View {
        VStack
        {
            HStack
            {
                Text(person.firstName)
                Text(person.surname)
            }
            Text(person.gender)
            Text(person.phoneNumbers[0].number)
            Text(person.address.city)
            Text("\(person.age)")
        }
    }
}



struct DetailedView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailedView(person: Person.samplePerson)
    }
}
