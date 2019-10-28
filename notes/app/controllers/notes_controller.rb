class NotesController < ApplicationController
    def new
    end
    
    def create
        #render plain: params[:notes].inspect
        @note = Note.new(params[:notes])
        
        @note.save
        redirect_to @note
    end
 
    
end
