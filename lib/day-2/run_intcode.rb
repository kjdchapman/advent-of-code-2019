class RunIntcode
  def initialize(convert_intcode_string:, interpret_instruction:)
    @convert_intcode_string = convert_intcode_string
    @interpret_instruction = interpret_instruction
  end

  def execute(input)
    instructions = @convert_intcode_string.execute(input)

    instructions.each_slice(4) do |slice|
      instruction = @interpret_instruction.execute(slice)

      first_number = instruction[:positions][0]
      second_number = instruction[:positions][1]

      new_number = case instruction[:operation]
      when :add
        first_number + second_number
      when :multiply
        first_number * second_number
      when :quit
        break
      else
        raise
      end

      target = instruction[:target]

      instructions[target] = new_number
    end

    instructions.first
  end
end
