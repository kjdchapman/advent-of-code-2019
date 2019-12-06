describe CalculateFuelRequirementFromMass do
  it 'given 0 it returns 0' do
    expect(subject.execute(0)).to be_zero
  end

  it 'given 12 it returns 2' do
    expect(subject.execute(12)).to eq(2)
  end

  it 'given 14 it returns 2' do
    expect(subject.execute(14)).to eq(2)
  end

  it 'given 1969 it returns 654' do
    expect(subject.execute(1969)).to eq(654)
  end

  it 'given 100756 it returns 33583' do
    expect(subject.execute(100756)).to eq(33583)
  end
end
