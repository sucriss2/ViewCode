//  GridBoxViewSpec.swift
//  ViewCodeTests
//
//  Created by Suh on 24/11/22.
//

import Quick
import Nimble
import Nimble_Snapshots
import UIKit

@testable import ViewCode

class GridBoxViewSpec: QuickSpec {
    override func spec() {
        describe("the 'UI'  ") {
            it("should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                expect(view) == snapshot("GridBox")
            }
        }
    }
}


