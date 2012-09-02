require 'spec_helper'

describe Post do
  subject do
    described_class.new :title => 'Post#1',
      :content => 'Content \o/'
  end

  it { should be_valid }

  it 'should validate presence of title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'should validate presence of content' do
    subject.content = nil
    expect(subject).to_not be_valid
  end
end
