import Foundation
import Quick
import Nimble
import SwiftyContainer

class NotSwiftable {

}



public class TestClassA: BeSwifty {
    
    public var item: String = "name"
    
    public func yo() {
        
    }
}

public class TestClassB: BeSwifty { }

public class TestClassC: BeSwifty { }

public class TestClassD: BeSwifty { }

class SwiftyContainerSpec: QuickSpec {
    override func spec() {


 
        beforeEach {
            SwiftyContainer.empty()
        }


        describe("Container") {

            context("SharedInstance") {
                it("should be a singleton") {
                    expect(SwiftyContainer.itemCount).to(equal(0))
                }
            }

            context("Binds Types conforming to Swiftable") {
                it("TestClassA") {

                    SwiftyContainer.bind(TestClassA)
                    expect(SwiftyContainer.itemCount).to(equal(1))
                }

                it("TestClassB") {
                    SwiftyContainer.bind(TestClassB)
                    expect(SwiftyContainer.itemCount).to(equal(1))
                }

                it("TestClassC") {
                    SwiftyContainer.bind(TestClassC)
                    expect(SwiftyContainer.itemCount).to(equal(1))
                }

                it("TestClassC") {
                    SwiftyContainer.bind(TestClassD)
                    expect(SwiftyContainer.itemCount).to(equal(1))
                }
            }

            context("Resolves") {
                it("TestClassA") {

                    SwiftyContainer.bind(TestClassA)
                    let instance = SwiftyContainer.resolve(TestClassA)

                    expect(instance).toNot(beNil())
                }
                it("Singleton TestClassA") {

                    SwiftyContainer.bind(TestClassA.self, withScope: SwiftyContainerScope.Singleton)

                    let instance = SwiftyContainer.resolve(TestClassA)
                    expect(instance).toNot(beNil())
                }

                it("Transient TestClassA") {

                    SwiftyContainer.bind(TestClassA.self, withScope: SwiftyContainerScope.Transient)

                    let instance = SwiftyContainer.resolve(TestClassA)
                    expect(instance).toNot(beNil())
                }
            }
        }
    }
}
