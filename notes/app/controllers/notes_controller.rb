class NotesController < ApplicationController

    def show 
         @note = Note.find(params[:id])
    end
    
    def create
         @note = Note.new(note_params)
        
        @note.save
        redirect_to @note
    end
end

private 
    def note_params
        params.require(:note).permit(:title, :text)

    end
