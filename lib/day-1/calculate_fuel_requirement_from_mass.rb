class CalculateFuelRequirementFromMass
  def execute(mass)
    return 0 if mass.zero?

    mass / 3 - 2
  end
end
