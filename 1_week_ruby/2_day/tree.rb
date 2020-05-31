class Tree
  attr_accessor :children, :node_name

  def initialize(data)
    @node_name = data.first.first
    @children = data[@node_name].map { |key, node| Tree.new(Hash[key => node])  }
  end

  def visit_all(&block)
    visit &block
    @children.each { |child| child.visit_all &block } if @children
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new(
  {
    'grandpa' => {
      'dad' => { 'child1' => {}, 'child2' => {} },
      'uncle' => { 'child3' => {}, 'child4' => {} }
    }
  }
)

puts "Visit a node"
ruby_tree.visit { |node| puts node.node_name }
puts

puts "visit entry tree"
ruby_tree.visit_all { |node| puts node.node_name }
