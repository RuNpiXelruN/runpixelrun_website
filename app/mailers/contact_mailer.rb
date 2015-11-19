class ContactMailer < ActionMailer::Base
    default to: 'justin@socialplayground.com.au'
    
    def contact_email(contact)
        @contact = contact
        
        mail(from: @contact.email, subject: 'New contact form message').deliver
    end
    
end