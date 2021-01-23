import SwiftUI

struct CodeView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var appFunction: FunctionViewModel
    
    var appFunctionIndex: Int {
        viewModel.appFunctions.firstIndex(where: {
            $0.id == appFunction.id
        })!
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TextEditor(text: $viewModel.appFunctions[appFunctionIndex].content)
                .foregroundColor(Color(red:0.9, green: 0.9, blue: 0.9))
                .background(Color(red:0.2, green: 0.2, blue: 0.2))
                .font(.custom("Courier New", size: 18))
                .border(Color.black, width: 0)
                .disableAutocorrection(true)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .keyboardType(.asciiCapable)
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        CodeView(appFunction: viewModel.appFunctions[0])
            .environmentObject(viewModel)
    }
}
