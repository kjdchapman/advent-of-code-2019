describe 'run intcode' do
  let(:run_intcode) do
    run_intcode = RunIntcode.new(
      convert_intcode_string: ConvertIntcodeStringToArray.new,
      interpret_instruction: InterpretInstruction.new
    )
  end

  it 'example one' do
    expect(run_intcode.execute("1,0,0,0,99")).to eq("2")
  end

  it 'example two' do
    expect(run_intcode.execute("2,4,4,5,99,0")).to eq("2")
  end

  it 'example three' do
    expect(run_intcode.execute("1,1,1,4,99,5,6,0,99"))
      .to eq("30")
  end
end
