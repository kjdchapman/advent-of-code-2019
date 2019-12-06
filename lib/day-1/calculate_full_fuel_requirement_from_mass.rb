class CalculateFullFuelRequirementFromMass
  def execute(mass)
    fuel = mass
    total_fuel = 0

    while
      fuel = fuel / 3 - 2

      break if fuel <= 0

      total_fuel += fuel
    end

    total_fuel
  end
end
