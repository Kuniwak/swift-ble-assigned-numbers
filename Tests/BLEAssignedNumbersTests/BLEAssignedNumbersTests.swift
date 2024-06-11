import XCTest
import BLEAssignedNumbers


final class BLEAssignedNumbersTests: XCTestCase {
    func testCCCD() throws {
        XCTAssertEqual(
            AssignedNumbers.Descriptors.clientCharacteristicConfiguration.uuid().uuidString,
            "00002902-0000-1000-8000-00805F9B34FB"
        )
    }
}
