module Response_service
    def map_to_json(list)
        {id: list[:id], name: list[:name], phone: list[:phone], email: list[:email]}    
    end

    def contact_to_json(list)
        {id: list[:id], name: list[:name], phone: list[:phone], email: list[:email],user_id:list[:user_id]}    
    end

    def response_as_json(contacts, users)
        list = {
            users: users.map{|user| map_to_json(user)},
            contatos: contacts.map{|contato| contact_to_json(contato) if contato[:user_id] == [:users][:id]}
        }
        end
end