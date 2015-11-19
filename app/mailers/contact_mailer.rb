class ContactMailer < ActionMailer::Base
    default to: 'justin@socialplayground.com.au'
    
    def contact_email(contact)
        @contact = contact

        mail(from: @contact.email, subject: 'Contact Form Message').deliver
    end
    
end
