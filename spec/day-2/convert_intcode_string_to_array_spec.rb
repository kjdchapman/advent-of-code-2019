describe ConvertIntcodeStringToArray do
  it 'with no input it blows up' do
    expect(subject.execute("")).to eq([])
  end

  it 'with a single line it returns that number in a list' do
    expect(subject.execute("25825")).to eq(["25825"])
  end

  it 'with comma separated values it returns two list entries' do
    expect(subject.execute("25825,40255"))
      .to eq(["25825", "40255"])
  end
end
