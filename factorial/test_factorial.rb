require_relative "../minitest_helper"
require_relative "./factorial"


describe Integer do

  describe "given an integer" do
    using Factorial
    it "should return its factorial" do
      5.factorial.must_equal 120
    end
  end

end
