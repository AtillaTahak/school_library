class Person
    def initialize(name="Unknown",age,parent_permission="Unknown")
        @id=Ramdom.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    private 
    def is_of_age?
        @age >= 18
    end

    def can_use_services?
        @parent_permission == "allowed"
    end
    attr_reader :id, :name, :age
    attr_writer :name, :age
end