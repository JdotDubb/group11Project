class NotesController < ApplicationController
    
    def class1
        @note = Note.all
    end

    def show 
         @note = Note.find(params[:id])
    end
    
    def new
        @note = Note.new
    end
    
    def create
         @note = Note.new(note_params)
        
        if @note.save
            redirect_to @note
        else
            render 'new'
        end
    end
end

private 
    def note_params
        params.require(:notes).permit(:title, :text)

    end
