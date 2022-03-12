require './corrector'
require_relative './rental'

class Person
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(age = 22, name = 'Unknown', parent_permission = 1)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @corrector = Corrector.new
  end

  def validate_name(name)
    @name = @corrector.correct_name(name)
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  public :can_use_services?

  def add_rental(book, date)
    Rental.new(date, self, book)
  end
end
