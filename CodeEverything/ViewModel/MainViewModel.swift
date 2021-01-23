
import Foundation
import Combine

class MainViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    
    var valuePublisher = PassthroughSubject<String, Never>()
    
    @Published var isRunning: Bool
    @Published var appName: String
    @Published var content: String
    @Published var appFunctions : [AppFunctionModel] = []
    
    
    init() {
        content = "SayHello();"
        appName = "Hello World App"
        isRunning = false
        // dummy init for now
        let func1 = AppFunctionModel()
        func1.id = 1
        appFunctions.append(func1)
        let func2 = AppFunctionModel()
        func2.id = 2
        func2.name = "test"
        func2.content = "function Test(){\n\t writeln('This is a test');\n }"
        appFunctions.append(func2)
    }
    
    func run()  {
        isRunning = true
        }
    
    func stop() {
        isRunning = false
    }
}

// For identifiying WebView's forward and backward navigation
enum WebViewNavigation {
    case backward, forward, reload
}

