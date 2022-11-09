require 'Present'

RSpec.describe Present do
    context "when you try to wrap something that is already wrapped" do
        it "it fails" do
            present = Present.new
            present.wrap("bike")
            expect{present.wrap("bike")}.to raise_error "A contents has already been wrapped."
        end
    end


    context "when unwrap with wrapping first" do
        it "it fails" do
            present = Present.new
            expect{present.unwrap}.to raise_error "No contents have been wrapped."
        end
    end

    it "wrap and unwrap a present" do
        present = Present.new
        present.wrap("PS5")
        expect(present.unwrap).to eq "PS5"
    end

end