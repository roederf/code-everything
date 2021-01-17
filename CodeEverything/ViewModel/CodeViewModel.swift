
import Foundation
import Combine

class CodeViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    var showWebTitle = PassthroughSubject<String, Never>()
    var showLoader = PassthroughSubject<Bool, Never>()
    var valuePublisher = PassthroughSubject<String, Never>()
    var title: String
    var text: String
    
    init() {
        text = "console.log('Hello World');"
        title = "My Code"
    }
    
    func run()  {
            // load code into webview
            // navigate to RunView
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
