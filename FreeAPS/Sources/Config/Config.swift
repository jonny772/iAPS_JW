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
    // this interval so isLooping is reset and future loops are not blocked. Generous enough to
    // never trip a legitimately slow loop.
    static let loopTimeout = 540.seconds.timeInterval // 9 minutes
}
