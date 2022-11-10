require "reading_time"

RSpec.describe "reading_time method" do
    context "given an empty string as an argument" do
      it "returns 0" do
        result = reading_time("")
        expect(result).to eq 0
      end
    end

    context "given a string of 200 words" do
      it "returns 1" do
        result = reading_time("One " * 200)
        expect(result).to eq 1
      end
    end

    context "given a string of 1 word" do
        it "returns 0.005" do
          result = reading_time("One")
          expect(result).to eq 1
        end
      end

      context "given a string of 100 words" do
        it "returns 1" do
          result = reading_time("One" * 100)
          expect(result).to eq 1
        end
      end

      context "given a string of 2000 words" do
        it "returns 10" do
          result = reading_time("One " * 2000)
          expect(result).to eq 10
        end
      end
  end
