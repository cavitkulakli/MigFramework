    import XCTest
    import SwiftUI
    @testable import MigFramework

    final class MigFrameworkTests: XCTestCase {
        @State var height: CGFloat
        @State var leadingTrallingSize: CGFloat
        
        public init(height: CGFloat, leadingTrallingSize: CGFloat) {
            self.height = height
            self.leadingTrallingSize = leadingTrallingSize
            super.init()
        }
        
        func testShimmering() {
            
            var body: some View {
                //leadingTrallingSize must be (UIScreen.main.bounds.width / 5) etc. or 0 logically
                MigFramework.ShimmerView(height: $height, leadingTrallingSize: $leadingTrallingSize, show: false)
            }
           
        }
        
        static var allTests = [
            ("testShimmering", testShimmering)
        ]
    }
