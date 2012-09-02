require 'spec_helper'

describe Author do
  subject do
    described_class.new :name => 'Me ;)'
  end

  it { should be_valid }

  it 'should not be valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
