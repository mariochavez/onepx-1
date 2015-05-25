require "test_helper"

describe Image do
  let(:image) { Image.new }

  it "must be valid" do
    image.must_be :valid?
  end
end
