//
// Created by marty on 2022/09/26.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keyword: String

        // GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod = .get
        var path: String = "/search/repositories"
        var queryItems: [URLQueryItem] {
            [URLQueryItem(name: "q", value: keyword)]
        }
    }

    struct SearchUsers : GitHubRequest {
        let keyword: String

        // GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod = .get
        var path: String = "/search/users"
        var queryItems: [URLQueryItem] {
            [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
