class Backer
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    ProjectBacker.all.filter {|backed_projects|backed_projects.backer == self}.map{|backed_projects| backed_projects.project}
  end

end