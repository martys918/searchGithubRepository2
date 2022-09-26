//
// Created by marty on 2022/09/26.
//

enum GitHubClientError : Error {
    // 通信に失敗
    case connectionError(Error)
    // レスポンスのパースエラー
    case responseParseError(Error)
    // APIからエラーを受け取った
    case apiError(GitHubAPIError)
}
