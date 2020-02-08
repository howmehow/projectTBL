require_relative("../db/sql_runner")

class City

attr_reader :id
attr_accessor :name, :country_id

  def initialize(options)
    @id = options["id"].to_i() if options["id"]
    @name = options["name"]
    @country_id = options["country_id"]
  end

  def save()
    sql = "INSERT INTO cities (name, country_id) VALUES ($1,$2)
    RETURNING id"
    values = [@name, @country_id]
    result = SqlRunner.run(sql,values)
    @id = result.first["id"].to_i()
  end
  def update()
    sql = "UPDATE cities SET (name, country_id) = ($1, $2)
    WHERE id = $3"
    values = [@name, @country_id, @id]
    SqlRunner.run(sql, values)
  end
  def self.all()
    sql = "SELECT * FROM cities"
    result = SqlRunner.run(sql)
    cities = result.map{|city| City.new(city)}
    return cities
  end
  def self.delete_all()
    sql = "DELETE FROM cities"
    SqlRunner.run(sql)
  end
end
