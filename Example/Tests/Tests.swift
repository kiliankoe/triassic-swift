// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import Triassic

class PlaySpec: QuickSpec {
    override func spec() {
        describe("Triassic.play") {
            it("should output something") {
                Triassic.play()
            }
        }
    }
}
