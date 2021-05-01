module User_services
    def create_user(id,name,email,phone)

        if id.nil? || name.nil? || email.nil? || phone.nil?
            "PREENCHA TODOS OS CAMPOS!"
        else
            "TODOS OS CAMPOS PREENCHIDOS!"
        end 

        if is_email_valid?(email)
           new_user =  User.new(id, name, email, phone) if is_email_valid?(email)
        end
        new_user
    end

    REGEX_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    def is_email_valid?(email)
        email.match(REGEX_PATTERN)
    end
    
end
