//
//  HasCellIdentifier.swift
//  SpotifyUIClone
//
//  Created by Anh Trần Sĩ Nguyên on 01/08/2022.
//

protocol HasCellIdentifier {
    static func cellIdentifier() -> String
}

extension HasCellIdentifier {
    static func cellIdentifier() -> String {
        return String(describing: Self.self)
    }
}
