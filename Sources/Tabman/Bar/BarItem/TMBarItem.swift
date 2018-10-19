//
//  TMBarItem.swift
//  Tabman
//
//  Created by Merrick Sapsford on 06/06/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

/// Definition of an item that can be displayed in a `TMBar`.
///
/// Properties of a `TMBarItemable` are optionally displayed in a `TMBar` depending on the layout / configuration.
public protocol TMBarItemable {
    
    /// Title of the item.
    var title: String? { get }
    /// Image to display.
    var image: UIImage? { get }
}

/// Default `TMBarItemable` that can be displayed in a `TMBar`.
public struct TMBarItem: TMBarItemable {
    
    // MARK: Properties
    
    public let title: String?
    public let image: UIImage?
        
    // MARK: Init
    
    public init(title: String) {
        self.init(with: title, image: nil)
    }
    
    public init(image: UIImage) {
        self.init(with: nil, image: image)
    }
    
    public init(title: String, image: UIImage) {
        self.init(with: title, image: image)
    }
    
    private init(with title: String?, image: UIImage?) {
        self.title = title
        self.image = image
    }
}
