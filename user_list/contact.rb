class Contact
    attr_reader :id, :name, :email, :phone, :user_id
    def initialize(id,name,email,phone,user_id)
        @id = id
        @name = name
        @email = email
        @phone = phone
        @user_id = user_id
    end
end