
import Foundation
import Combine

class MainViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    
    var valuePublisher = PassthroughSubject<String, Never>()
    
    @Published var isRunning: Bool
    @Published var appName: String
    @Published var content: String
    @Published var appFunctions : [FunctionViewModel] = []
    
    
    init() {
        content = "SayHello();"
        appName = "My App"
        isRunning = false
        let func1 = FunctionViewModel()
        func1.id = 1
        appFunctions.append(func1)
        let func2 = FunctionViewModel()
        func2.id = 2
        func2.name = "test"
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

