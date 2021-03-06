
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
        content = ""
        appName = "Hello World App"
        isRunning = false
        // dummy init for now
        let func2 = AppFunctionModel()
        func2.id = 1
        func2.name = "Main"
        func2.content = "SayHello();"
        appFunctions.append(func2)
        let func1 = AppFunctionModel()
        func1.id = 2
        func1.name = "SayHello"
        func1.content = "function SayHello(){\n\t writeln('Hello World');\n }"
        appFunctions.append(func1)
    }
    
    func addFunction() {
        let f = AppFunctionModel()
        f.id = appFunctions.count + 1
        f.name = "NewFunction"
        f.content = "function NewFunction(){\n\t\n }"
        appFunctions.append(f)
    }
    
    func run()  {
        content = ""
        for f in appFunctions {
            content += f.content
        }
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

