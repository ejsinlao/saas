class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)#{name:"EJ",email:"EJ@live.com"}
        if @contact.save
            #Take user to contact page and include notice 
            flash[:success] = "Message sent."
           redirect_to new_contact_path
        else
            flash[:error] = @contact.errors.full_messages.join(", ")
           redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end