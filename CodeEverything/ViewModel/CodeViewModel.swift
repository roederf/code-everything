
import Foundation
import Combine

class CodeViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    var showWebTitle = PassthroughSubject<String, Never>()
    var showLoader = PassthroughSubject<Bool, Never>()
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
            // load code into webview
            // navigate to RunView
        var result = self.text
        isRunning = true
        }
    
    func stop() {
        // stop running code
        // navigate back to CodeView
        isRunning = false
    }
}

// For identifiying WebView's forward and backward navigation
enum WebViewNavigation {
    case backward, forward, reload
}

// For identifying what type of url should load into WebView
enum WebUrlType {
    case localUrl, publicUrl
}
