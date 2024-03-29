//
//  NibLoading.swift
//  SpotifyUIClone
//
//  Created by Anh Trần Sĩ Nguyên on 15/05/2022.
//

import UIKit

protocol NibLoading {}

extension NibLoading where Self: UIView {
    static func load(nibName: String) -> Self {
        let bundle = Bundle(for: Self.self)
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? Self else {
            fatalError("Error instantiate view")
        }
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }
}
