//
// Created by Tony Merante on 1/3/16.
// Copyright (c) 2016 Societymedia. All rights reserved.
//

import Foundation





public class TestClassA: BeSwifty {

 public var item: String = "name"

    public func yo() {

    }
}

public class TestClassB: BeSwifty { }

public class TestClassC: BeSwifty { }

public class TestClassD: BeSwifty { }

public class SwiftyContainer {

    private static let sharedInstance = SwiftyContainer()
    private var container = Dictionary<String, () -> BeSwifty>()

    init() { }


    public class var itemCount:Int {
        return sharedInstance.container.count
    }

    class public func bind<T:BeSwifty>(bindableType: T.Type) {
        SwiftyContainer.bind(bindableType, withScope: .Singleton)
    }

    class public func bind<T:BeSwifty>(bindableType: T.Type, withScope scope: SwiftyContainerScope) {

        let myStr = String(bindableType)

        if scope == .Singleton {
            let instance = T()
            sharedInstance.container[myStr] = {
                return instance
            }
        } else {
            sharedInstance.container[myStr] = {
                return T()
            }
        }
    }

    class public func resolve<T>(swiftType: T.Type) -> T {
        let myStr = String(swiftType)

        let value = sharedInstance.container[myStr]!()

        print(value)
        return value as! T
    }

    class public func empty() {
        sharedInstance.container.removeAll(keepCapacity: false)
    }
}
