module Contact_services
    def create_contact(id,name,email,phone,user_id)
        if id.nil? || name.nil? || email.nil? || phone.nil? || user_id.nil?
            "PREENCHA TODOS OS CAMPOS!"
        else
            "TODOS OS CAMPOS PREENCHIDOS!"
        end 
        
        if is_email_valid?(email)
           new_contact =  Contact.new(id,name,email,phone,user_id) if is_email_valid?(email)
        end
        new_contact
    end

    REGEX_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    
    
    def is_email_valid?(email)
        email.match(REGEX_PATTERN)
    end
end