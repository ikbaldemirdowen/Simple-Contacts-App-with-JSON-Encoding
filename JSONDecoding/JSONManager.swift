
import Foundation



struct Person : Codable
{
    var firstName : String
    var surname : String
    var gender : String
    var age : Int
    var address : Address
    var phoneNumbers : [PhoneNumber]
    
    struct Address : Codable
    {
        var streetAddress : String
        var city : String
        var state : String
        var postalCode : String
    }
    
    struct PhoneNumber : Codable
    {
        var type : String
        var number : String
    }
    
    static let allPersons : [Person] = Bundle.main.decode(file: "example.json")
    static let samplePerson : Person = allPersons[0]
    
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) from bundle.")
        }
        
        return loadedData
    }
}
