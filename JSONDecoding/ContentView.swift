//
//  ContentView.swift
//  JSONDecoding
//
//  Created by Ikbal Demirdoven on 2023-02-08.
//

import SwiftUI

struct ContentView: View {
    let allPeople : [Person] = Bundle.main.decode(file: "example.json")
    var body: some View {
        NavigationView
        {
            List
            {
                ForEach(allPeople, id: \.firstName)
                { person in
                    NavigationLink
                    {
                        List
                        {
                            DetailedView(person : person)
                        }
                    } label: {
                        VStack(alignment: .leading)
                        {
                            Text(person.firstName)
                                .font(.headline).bold()
                            Text("\(person.phoneNumbers[0].number)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("PhoneBook")
            Button("asd")
            {
                for i in ["0", "1"]
                {
                    print(i )
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
