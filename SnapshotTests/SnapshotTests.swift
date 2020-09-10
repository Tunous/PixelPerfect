//
//  SnapshotTests.swift
//  SnapshotTests
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import XCTest
import SnapshotTesting
import SwiftUI

@testable import PixelPerfect

final class SnapshotTests: XCTestCase {

    func testGoodreadsApp() throws {
        assertAppSnapshot(.goodreadsApp)
    }

    func testWateringPlantApp() {
        assertAppSnapshot(.wateringPlantApp)
    }

    func testSimpleWeatherApp() {
        assertAppSnapshot(.simpleWeatherApp)
    }

    private func assertAppSnapshot(
        _ appInfo: AppInfo,
        file: StaticString = #file,
        testName: String = #function,
        line: UInt = #line
    ) {
        let view = AppView(appInfo) {}
            .frame(width: 440, height: 264)
            .offset(x: 0, y: -10)
        assertSnapshot(matching: view, as: .image, file: file, testName: appInfo.id, line: line)
    }
}
