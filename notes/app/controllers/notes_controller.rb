class NotesController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:notes].inspect
    end
 
    
end
