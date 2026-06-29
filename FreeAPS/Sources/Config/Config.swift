import Foundation
import SwiftDate

enum Config {
    static let treatWarningsAsErrors = true
    static let withSignPosts = false
    static let loopIntervalFiveMinutes = 270.seconds.timeInterval // 4.5 minutes
    static let loopIntervalOneMinute = 50.seconds.timeInterval
    static let eхpirationInterval = 10.minutes.timeInterval
    // Safety net for the loop pipeline: if a loop never completes (e.g. pump enactment over
    // Bluetooth is interrupted when the app is backgrounded), the Combine chain is failed after
    // this interval so isLooping is reset and future loops are not blocked. Kept well above
    // worst-case pump comms but below the 5-minute loop interval.
    static let loopTimeout = 180.seconds.timeInterval
}
