//
//  ImageViewBoxSpec.swift
//  ViewCodeTests
//
//  Created by Suh on 24/11/22.
//

import UIKit
import Quick
import Nimble
import Nimble_Snapshots

@testable import ViewCode

class ImageBoxViewSpec: QuickSpec {
    override func spec() {
        describe("the 'UI'  ") {
            it("should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = ImageBoxView(frame: frame)
                expect(view) == snapshot("ImageBoxView")
            }
        }
    }
}
