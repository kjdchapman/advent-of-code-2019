class ConvertModuleStringToList
  def execute(string)
    lines = string.split("\n")
    lines.map{ |line| Integer(line) }
  end
end
