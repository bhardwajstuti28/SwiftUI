//
//  NavBarNoteApp.swift
//  NavigationBarCustomization
//
//  Created by Stuti Bhardwaj on 29/01/26.
//

import SwiftUI
struct Note : Identifiable,Hashable{
    let id = UUID()
    var title : String
    var preview : String
}
struct NavBarNoteApp: View {
    var notes : [Note] = [Note(title: "Grocery list", preview: "Milk,Eggs,Bread"),
                          Note(title: "Lecture plan", preview: "SwiftUI Navigation"),
                          Note(title: "Meeting Plan", preview: "Project Discussion"),
                          Note(title: "ToDo", preview: "finish Assignment"),]
    
    @State private var selectedNotes : Set<Note> = []
    @State private var isSelectedMode = false
    var body: some View {
        NavigationStack{
            List{
                ForEach(notes){note in
                    if isSelectedMode{
                        NoteRow(note : note,isSelected: selectedNotes.contains(note))
                            .onTapGesture {
                                if selectedNotes.contains(note){
                                    selectedNotes.remove(note)
                                    print(selectedNotes.count)
                                }
                                else{
                                    selectedNotes.insert(note)
                                    print(selectedNotes.count)
                                }
                            }
                        
                        
                    }
                    else{
                        NavigationLink{
                            NoteDetailView(note:note)
                        }
                        label : {
                            NoteRow(note: note, isSelected: true)
                        }
                    }

                }
            }
            .navigationTitle("My notes")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(isSelectedMode ? "Cancel" : "Select"){
                        isSelectedMode.toggle()
                        selectedNotes.removeAll()
                    }
                }
                ToolbarItemGroup(placement: .bottomBar){
                    Button{
                        print("Deleted \(selectedNotes.count)notes")
                    }label:{
                        Label("delete",systemImage: "trash")
                    }
                    .disabled(selectedNotes.isEmpty)
                    Button{
                        
                    }label:{
                        Label("share",systemImage: "square.and.arrow.up")
                    }
                    .disabled(selectedNotes.isEmpty)
                
                }
            }
        }
    }
}
struct NoteRow : View {
    var note : Note
    var isSelected : Bool
    var body: some View {
        HStack{
            VStack{
                Text(note.title)
                    .font(.headline)
                Text(note.preview)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
            }
            Spacer()
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
        }
    }
}
struct NoteDetailView :View {
    let note : Note
    var body: some View {
        
    }
}
#Preview {
    NavBarNoteApp()
}
