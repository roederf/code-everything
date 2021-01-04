import SwiftUI

struct CodeView: View {
    @EnvironmentObject var modelData: ModelData
    var codeFile: FileModel
    
    var codeFileIndex: Int {
        modelData.codeFiles.firstIndex(where: {
            $0.id == codeFile.id
        })!
    }
        
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
                ActivationButton(isSet: $modelData.codeFiles[codeFileIndex].isActive)
                Spacer()
                Text("Play")
            }
            .padding()
            Divider()
            ScrollView {
                Text(codeFile.content)
            }
            .navigationTitle(codeFile.name)
            
            Spacer()
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        CodeView(codeFile: modelData.codeFiles[0])
            .environmentObject(modelData)
    }
}
