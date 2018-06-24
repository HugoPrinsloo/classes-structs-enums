import UIKit

// Classes, Structs & Enums

struct 🐈 {
    let name: String
    let roomNumber: Int
}

class 🐈🏩 {
    enum ServiceType {
        case checkIn
        case checkOut
    }
    
    var guests: [🐈] = []
    
    func manage🐈(_ service: ServiceType, cat: 🐈) {
        switch service {
        case .checkIn:
            guests.append(cat)
            print("Welcome to the CatInn \(cat.name)")
        case .checkOut:
            guests.removeAll(where: { $0.roomNumber == cat.roomNumber })
            print("Thanks for your stay and we hope to see you soon \(cat.name)")
        }
    }
    
    func numberOfGuests() -> Int {
        return guests.count
    }
}

let catHotel = 🐈🏩()
catHotel.manage🐈(.checkIn, cat: 🐈(name: "Tigi", roomNumber: 101))
catHotel.numberOfGuests()
