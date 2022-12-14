//
// Created by marty on 2022/09/26.
//

struct Repository : Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User

    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
