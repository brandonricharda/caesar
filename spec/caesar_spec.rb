require "./caesar.rb"

describe "#caesar_cipher" do

    it "works for single letters" do
        expect(caesar_cipher("A", 1)).to eql("B")
    end

    it "loops around" do
        expect(caesar_cipher("A", -1)).to eql("Z")
    end

    it "ignores numbers" do
        expect(caesar_cipher("2", 1)).to eql("2")
    end

    it "ignores numbers within string" do
        expect(caesar_cipher("A2", 1)).to eql("B2")
    end
    
    it "returns positively shifted alpha string" do
        expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "returns negatively shifted alpha string" do
        expect(caesar_cipher("What a string!", -5)).to eql("Rcvo v nomdib!")
    end

end