require File.dirname(__FILE__)+'/../common/prime'

def rotations( n )
    rs, i = [], 0
    while i < n.count
        n.unshift n.pop
        rs << n.dup
        i += 1
    end
    rs
end

def rotations_prime( p )
    rotations( p.to_s.split('').map(&:to_i) ).each{ |r|
        return nil unless Prime.prime? r.join.to_i
    }
    true
end

circulars = []
Prime.euler_sieve( (2..1000000).to_a ).each{ |p|
    circulars << p if rotations_prime( p )
}
puts circulars.count