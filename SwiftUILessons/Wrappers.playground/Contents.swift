//
//import Cocoa
import CodingStyleCased
//
class WrappedTest {
    @CodingStyle(.kebabCase) var testString = "ssss"
//    @Cod
}
//
let test = WrappedTest()
test.testString = "last world_camel-cased"
print(test.testString)
test.testString = "bbbb"
print(test.testString)
//
//
