class Corrector
  def correct_name(name)
    correct_name = name.capitalize
    correct_name = name.slice(0, 10) if correct_name.length > 10
    correct_name
  end
end
