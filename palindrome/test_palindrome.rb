require_relative "../minitest_helper"
require_relative "./palindrome"
describe String do
  describe "given word/string" do
    using Palindrome
    it "should be palindrome word" do
      assert "eye".palindrome?
    end

    it "should not be palindrome word" do
      refute "eyeopener".palindrome?
    end

    it "should be palindrome string" do
      assert "race car".palindrome?
    end

    it "should not be palindrome string" do
      refute "This is not palindrome".palindrome?
    end
  end
end

