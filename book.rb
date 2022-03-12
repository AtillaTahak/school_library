require './rental'

class Book
  attr_accessor :author, :title, :rentals

  def initialize(author, title)
    @author = author
    @title = title
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
