module Response_service
    def map_to_json(list)
        {id: list[:id], name: list[:name], phone: list[:phone], email: list[:email]}    
    end

    def contact_to_json(list)
        {id: list[:id], name: list[:name], phone: list[:phone], email: list[:email],user_id:list[:user_id]}    
    end

    def response_as_json(contacts, users)  
        users.map do |user|
            contacts.map do |contato|
                next if contato.nil?
                if user.id == contato.user_id
                    list = {
                        id: user.id,
                        name: user.name,
                        phone: user.phone,
                        email: user.email,
                        contatos: [
                            id: contato.id,
                            name: contato.name,
                            phone: contato.phone,
                            email: contato.email,
                            user_id: contato.user_id
                        ]
                    }
                    puts list
                end
            end
        end
    end
end