# Definition for a binary tree node.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end

  def symmetric?
    return true if self.nil?
    mirror(@left, @right)
  end

  private

  def mirror(a,b)
    return a == b if (a.nil? || b.nil?)
    a.val == b.val && mirror(a.left, b.right) && mirror(a.right, b.left)
  end

end
