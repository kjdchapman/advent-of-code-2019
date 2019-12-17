describe InterpretInstruction do
  it 'given no input returns nil' do
    expect(subject.execute(nil)).to eq nil
  end

  it 'given an opcode of 1 returns an instruction to add' do
    expect(subject.execute(['1'])).to include(operation: :add)
  end

  it 'given an opcode of 2 returns an instruction to multiply' do
    expect(subject.execute(['2'])).to include(operation: :multiply)
  end

  it 'given an opcode of 99 returns an instruction to quit' do
    expect(subject.execute(['99'])).to include(operation: :quit)
  end

  it 'given an opcode of 55 throws an argument error' do
    expect{subject.execute(['55'])}
      .to raise_error(ArgumentError, "unknown opcode: 55")
  end

  it 'given an input of 1, 1, 2' do
    expect(subject.execute(['1', '1', '2'])).to include(
      positions: [1, 2]
    )
  end

  it 'given an input of 2, 44, 20' do
    expect(subject.execute(['1', '44', '20'])).to include(
      positions: [44, 20]
    )
  end

  it 'given an input of 1, 1, 1, 1' do
    expect(subject.execute(['1', '1', '1', '1'])).to include(
      target: 1
    )
  end

  it 'given an input of 1, 2, 3, 4' do
    expect(subject.execute(['1', '2', '3', '4'])).to include(
      target: 4
    )
  end
end
