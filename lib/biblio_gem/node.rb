module BiblioGem
    Node = Struct.new(:value, :next) do
        
        attr_accessor :value, :next
        
        def initialize(args)
            @value = args[:value]
            @next = args[:next] 
        end
        
        def to_s
            @value.to_s
        end
        
    end
end
