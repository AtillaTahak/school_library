class Teacher < Person
    def initialize
        @specialization
    end

    def can_use_services?
        return true
    end
end