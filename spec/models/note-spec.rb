require 'rails_helper'

RSpec.describe Note, :type => :model do
  it "is valid with valid attributes" do
    expect(Note.new(identifier: "abc")).to be_valid
  end
  it "is not valid without an identifier" do
    expect(Note.new(identifier: nil)).to_not be_valid
  end
  it "is valid without a title" do
    expect(Note.new(title: nil, identifier: "abc")).to be_valid
  end
  it "is valid without a body" do
    expect(Note.new(text: nil, identifier: "abc")).to be_valid
  end
end
