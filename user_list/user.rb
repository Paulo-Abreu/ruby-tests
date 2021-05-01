class User
    attr_reader :id, :name, :email, :phone
    def initialize(id,name,email,phone)
        @id = id
        @name = name
        @email = email
        @phone = phone
    end
end