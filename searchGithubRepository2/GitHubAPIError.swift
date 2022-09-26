//
// Created by marty on 2022/09/26.
//

struct GitHubAPIError : Decodable, Error {
    struct FieldError : Decodable {
        let resource: String
        let field: String
        let code: String
    }

    let message: String
    let fieldError: [FieldError]
}
