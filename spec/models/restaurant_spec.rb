require "spec_helper"

describe Restaurant do

  subject {Restaurant.new(name: 'Bobs', description: 'bar and grill', address: '29 Mary St')}

  describe "Name validation" do
    it "Can not be empty" do
      subject.name = ""
      expect(subject.valid?).to be_false
      subject.name = "Bobs"
    end
  end

  describe "Description validation" do
    it "Can not be empty" do
      subject.description = ""
      expect(subject.valid?).to be_false
      subject.description = "bar and grill"
    end
  end

  describe "Description validation" do
    it "Can not be empty" do
      subject.address = ""
      expect(subject.valid?).to be_false
      subject.address = "29 Mary St"
    end
  end

end
