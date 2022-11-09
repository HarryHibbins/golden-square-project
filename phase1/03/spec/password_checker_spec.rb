require 'Password_checker'

RSpec.describe PasswordChecker do
    it "Return true if password is > 8 letters" do
        password = PasswordChecker.new
        result = password.check("Password")
        expect(result).to eq true
    end

    it "Return fail if password is < 8 letters" do
        password = PasswordChecker.new
        expect {password.check("Pass")}.to raise_error "Invalid password, must be 8+ characters."
    end

end
