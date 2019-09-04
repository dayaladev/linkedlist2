class LinkedListNode
    attr_accessor :value, :next_node
    
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else
        print "nil\n"
        return
    end
end

def simple_reverse_list(list)
    @currentNode = nil
    while list
        @currentNode = LinkedListNode.new(list.value, @currentNode)
        list = list.next_node
    end
    return @currentNode
end

def reverse_list(list, previous=nil)
    #set values for first iteration through list
    first_iteration = 1
    end_reached = 0
    temp_node = nil
    
    #loop through list
    while end_reached == 0
        #set additional values for first iteration
    if first_iteration == 1
      current_node = list
      last_node = nil
      first_iteration = 0
    else
      current_node = temp_node
    end
    #hold the "current" next_node for the next loop around
    temp_node = current_node.next_node
    if temp_node.nil?
        #if temp_node is nil, we have reached the end; no need to loop back
      end_reached = 1
    end
    if last_node.nil?
      current_node.next_node = nil
    else
      current_node.next_node = last_node
    end
    last_node = current_node
  end
end

# Example Nodes
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(73, node3)
node5 = LinkedListNode.new(99, node4)
node6 = LinkedListNode.new(66, node5)
node7 = LinkedListNode.new(57, node6)
node8 = LinkedListNode.new(59, node7)
node9 = LinkedListNode.new(82, node8)
node10 = LinkedListNode.new(28, node9)
node11 = LinkedListNode.new(22, node10)
node12 = LinkedListNode.new(49, node11)
node13 = LinkedListNode.new(66, node12)

# Print list before altering it
#print_values(node13)

##### To test reverse_list method
revlist = reverse_list(node13) 
#revlist = simple_reverse_list(node3)
print_values(node1)
#####