//
// Created by marty on 2022/09/26.
//

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)

    init(value: T) {
        self = .success(value)
    }

    init(error: Error) {
        self = .failure(error)
    }
}