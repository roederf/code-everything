import SwiftUI

struct CodeView: View {
    var codeFile: FileModel
        
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                codeFile.image
                .resizable()
                .frame(width: 34, height: 34)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
                
                Text(codeFile.name)
                Spacer()
                Text("Play")
            }
            .padding()
            Divider()
            ScrollView {
                Text(codeFile.content)
            }
            .navigationBarTitle(codeFile.name)
            
            Spacer()
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView(codeFile: codeFiles[0])
    }
}
