def read_input(file_path)
  File.readlines(file_path)
end

def calculate_fuel(mass)
  mass.to_i / 3 - 2 # rounds down since int accuracy
end

input = read_input('input')
fuel_per_component = input.map { |mass| calculate_fuel(mass) }
p fuel_per_component.reduce(0, :+)