class Candidate

  def initialize(years_of_experience, github_points,
                 languages_worked_with, applied_recently, age)
    @years_of_experience = years_of_experience
    @github_points = github_points
    @languages_worked_with = languages_worked_with
    @applied_recently = applied_recently
    @age = age
  end

  def experienced_programmer?
    @languages_worked_with.include?("Ruby") &&
    (@years_of_experience >= 2 || @github_points >= 500) &&
    @age >= 15 &&
    @applied_recently == false
  end

end
