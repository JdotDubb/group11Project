class NotesController < ApplicationController
    
    def class1
        @notes = Note.all
    end
    
    def class1Notes
        @notes = Note.all
    end

    def class2Notes
        @notes = Note.all
    end

    def show 
         @note = Note.find(params[:id])
    end
    
    def new
        @note = Note.new
    end
    
    def create
         @note = Note.new(note_params)
         @note.user = current_user
         
        if @note.save
            redirect_to @note
        else
            render 'new'
        end
    end
    
    def edit
        @note = Note.find(params[:id])
    end
    
    def update 
        @note = Note.find(params[:id]) 
        
        if @note.update(note_params) 
            redirect_to @note 
        else 
                render 'edit' 
        end 
    end
    
    def destroy 
        @note = Note.find(params[:id])
        @note.destroy
        
        redirect_to notes_class1_path
    end
        
end

private 
    def note_params
        params.require(:note).permit(:title, :course, :text)

    end
