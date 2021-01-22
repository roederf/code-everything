
import Foundation
import Combine

class MainViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    
    var valuePublisher = PassthroughSubject<String, Never>()
    
    @Published var isRunning: Bool
    @Published var title: String
    @Published var text: String
    
    init() {
        text = "writeln('Hello World');"
        title = "My Code"
        isRunning = false
    }
    
    func run()  {
        _ = self.text
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

