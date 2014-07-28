
class Tree
  attr_accessor :node_name, :children

  def initialize(structure)
    name, child_structure = structure.first
    @node_name = name
    @children = child_structure.nil? ? [] : child_structure.map { |e| Tree.new [e] }
  end

  def visit_all(&block)
    visit &block
    @children.each { |c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end



def print_each
  numbers = (1..16).to_a
end

def print_each_slice
  numbers = (1..16).to_a
  numbers.each_slice(4) { |e| print e }
end

def print_tree
  root = Tree.new({'grandpa' => {'dad' => {'c1' => {}, 'c2' => {}}, 'uncle' => {'c3' => {}}}})
  root.visit_all { |c| puts c.node_name }
end

def simple_grep_1(filename, needle)
  File.open filename do |f|
    f.each_line.with_index do |line, i|
      puts "#{i + 1}: #{line}" if /#{needle}/.match line
    end
  end
end


def simple_grep_2(filename, needle)
  IO.readlines(filename).each_with_index do |line, i|
    puts "#{i + 1}: #{line}" if /#{needle}/.match line
  end
end

# print_each
# print_each_slice
# print_tree
# simple_grep_1('lorem.txt', 'elit')
# simple_grep_2('lorem.txt', 'elit')
