require "spec_helper"

describe Restaurant do

  subject {Restaurant.new(name: 'Bobs', description: 'bar and grill', address: '29 Mary St', phone: '555-555-5555', restaurantimage: 'test.png')}

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

  describe "Phone validation" do
    it "Can not be empty" do
      subject.phone = ""
      expect(subject.valid?).to be_false
      subject.phone = "555-555-5555"
    end
  end

  describe "Picture validation" do
    it "Can not be empty" do
      subject.restaurantimage = ""
      expect(subject.valid?).to be_false
      subject.phone = "test.png"
    end 
  end 

end
