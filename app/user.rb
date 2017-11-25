module SphynxGrape
  class User
    attr_accessor :id, :first_name, :last_name

    def initialize
      @id = 1
      @first_name = 'John'
      @last_name = 'Doe'
    end

    def self.find_for_jwt_authentication(_sub)
      new
    end

    def jwt_subject
      id
    end
  end
end
