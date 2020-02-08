require_relative("../db/sql_runner")
class Country

  attr_reader :id
  attr_accessor :name, :continent_id
  
  def initialize(options)
    @id = options["id"].to_i() if options["id"].to_i()
    @name = options["name"]
    @continent_id = options["continent_id"]
  end

  def save()
    sql = "INSERT INTO countries (name, continent_id) VALUES ($1, $2)
    RETURNING id"
    values = [@name, @continent_id]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i()
  end
  def update()
    sql = "UPDATE countries SET (name, continent_id) = ($1, $2)
    WHERE id = $3"
    values = [@name, @continent_id, @id]
    SqlRunner.run(sql, values)
  end
  def self.all()
    sql = "SELECT * FROM countries"
    result = SqlRunner.run(sql)
    countries = result.map{|country| Country.new(country)}
    return countries
  end
  def self.delete_all()
    sql = "DELETE FROM countries"
    SqlRunner.run(sql)
  end
end
