class InterpretInstruction
  def execute(instruction)
    return nil if instruction.nil?

    operation = case instruction.first
    when "1"
      :add
    when "2"
      :multiply
    when "99"
      :quit
    else
      raise ArgumentError, "unknown opcode: #{instruction.first}"
    end

    positions = instruction[1..2].map(&:to_i)

    {
      operation: operation,
      positions: positions,
      target: instruction.last.to_i
    }
  end
end
