require "minitest/autorun"
require "./mirror"
describe TreeNode do
  describe "given a symmetric tree" do

    before do
      @tree = TreeNode.new(0)
      #1st level
      @tree.left = TreeNode.new(1)
      @tree.right = TreeNode.new(1)

      #2nd level
      @tree.left.right = TreeNode.new(3)
      @tree.left.left = TreeNode.new(2)
      @tree.right.right = TreeNode.new(2)
      @tree.right.left = TreeNode.new(3)
    end

    it "should return true" do
      @tree.must_be :symmetric?
    end
  end

  describe "given a asymmetric tree" do

    before do
      @tree = TreeNode.new(0)
      #1st level
      @tree.left = TreeNode.new(1)
      @tree.right = TreeNode.new(1)

      #2nd level
      @tree.left.right = TreeNode.new(3)
      @tree.left.left = TreeNode.new(2)
      @tree.right.right = TreeNode.new(nil)
      @tree.right.left = TreeNode.new(3)
    end

    it "should return false" do
      @tree.wont_be :symmetric?
    end
  end
end
