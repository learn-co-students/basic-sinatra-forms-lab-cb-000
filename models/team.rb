class Team
  attr_accessor :name, :coach, :pg, :sg, :pf, :sf, :c
  def initialize(opts={})
    @name = opts[:name]
    @coach = opts[:coach]
    @pg = opts[:pg]
    @sg = opts[:sg]
    @pf = opts[:pf]
    @sf = opts[:sf]
    @c = opts[:c]
  end
end
