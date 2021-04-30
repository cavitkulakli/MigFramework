    import XCTest
    import SwiftUI
    @testable import MigFramework

    final class MigFrameworkTests: XCTestCase {
        
        public init() {
            super.init()
        }
        
        func testShimmering() {
            
            var body: some View {
                //leadingTrallingSize must be (UIScreen.main.bounds.width / 5) etc. or 0 logically
                MigFramework.ShimmerView(height: 50, leadingTrallingSize: 0)
            }
           
        }
        
        static var allTests = [
            ("testShimmering", testShimmering)
        ]
    }
