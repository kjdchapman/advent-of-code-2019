describe ConvertModuleStringToList do
  it 'with no input it blows up' do
    expect(subject.execute("")).to eq([])
  end

  it 'with a single line it returns that number in a list' do
    expect(subject.execute("25825")).to eq([25825])
  end

  context 'with a single line that is not a number' do
    it 'blows up' do
      expect { subject.execute("foo") }
        .to raise_error(ArgumentError)
    end
  end

  it 'with two lines it returns two list entries' do
    expect(subject.execute("25825\n40255"))
      .to eq([25825, 40255])
  end
end
