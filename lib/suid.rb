class SUID
	def initialize
		@value = rand(0xffffffffffffffff)
	end
	
	def to_s
	  @str ||= to_string
	end
	
	def to_i
		@value
	end
	
	def self.generate
	  new.to_s
  end
  
  VERSION = "1.0.0"
  
  private
  
  def to_string
		val = self.to_i
  	rval = ''
		while rval.length < 11
			dm = val.divmod 62
			rval = @@chars62[dm[1]] + rval
			val = dm[0]
		end
		rval
  end
  
  @@chars62=('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a
end