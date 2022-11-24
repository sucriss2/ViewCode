//
//  ViewControllerScreenSpec.swift
//  ViewCodeTests
//
//  Created by Suh on 24/11/22.
//

import Quick
import Nimble
import Nimble_Snapshots
import UIKit

@testable import ViewCode

class ViewControllerScreenSpec: QuickSpec {
    override func spec() {
        describe("the 'UI' ") {
            it("should have the expected look and feel") {
                let frame = UIScreen.main.bounds
                let view = ViewControllerScreen(frame: frame)
                expect(view) == snapshot("ViewControllerScreen")
//                expect(view) == recordSnapshot("ViewControllerScreen")
            }
        }
    }
}
