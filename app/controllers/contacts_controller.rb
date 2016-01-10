class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        
        if @contact.save
            flash[:success] = "Message Sent!"
            redirect_to root_path
        else
            flash[:danger] = "Error occurred"
            render :new
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :phone, :email, :comments)
        end
end

