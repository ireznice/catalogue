require "spec_helper"

describe Catalogue do
  it "has a version number" do
    expect(Catalogue::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
