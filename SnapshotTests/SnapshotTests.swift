//
//  SnapshotTests.swift
//  SnapshotTests
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import XCTest
import SwiftUI
import SnapshotTesting
import PixelPerfectCore
import GoodreadsApp
import WateringPlantApp
import SimpleWeatherApp
import FoodMenuApp

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

    func testFoodMenuApp() {
        assertAppSnapshot(.foodMenuApp)
    }

    private func assertAppSnapshot(
        _ appInfo: AppInfo,
        file: StaticString = #file,
        testName: String = #function,
        line: UInt = #line
    ) {
        let view = AppView(appInfo) {}
            .frame(width: 440, height: 264)
            .offset(x: 0, y: -20)
        assertSnapshot(matching: view, as: .image, file: file, testName: appInfo.id, line: line)
    }
}
