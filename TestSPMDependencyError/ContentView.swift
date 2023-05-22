import Foo
import Bar
import SwiftUI

struct ContentView: View {
    let foo = FooImplementation()
    let bar = Bar()
    
    var body: some View {
        VStack {
            Text("FOO? \(foo.foo())")

            Text("BAR? \(bar.bar())")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
