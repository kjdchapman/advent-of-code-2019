require 'require_all'
require_all 'lib'

converter = ConvertModuleStringToList.new
calculator = CalculateFullFuelRequirementFromMass.new

module_masses_string = File.read('lib/day-1/input.txt')
masses_list = converter.execute(module_masses_string)
puts masses_list.sum{ |mass| calculator.execute(mass) }
