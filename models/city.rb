require_relative("../db/sql_runner")

class City

attr_reader :id
attr_accessor :name, :visited, :wish_list, :country_id

  def initialize(options)
    @id = options["id"].to_i() if options["id"]
    @name = options["name"]
    @visited = options["visited"]
    @wish_list = options["wish_list"]
    @country_id = options["country_id"]
  end

  def save()
    sql = "INSERT INTO cities (name, visited, wish_list, country_id) VALUES ($1,$2,$3,$4)
    RETURNING id"
    values = [@name, @visited, @wish_list, @country_id]
    result = SqlRunner.run(sql,values)
    @id = result.first["id"].to_i()
  end
  def update()
    sql = "UPDATE cities SET (name, visited, wish_list, country_id) = ($1, $2, $3, $4)
    WHERE id = $5"
    values = [@name, @visited, @wish_list, @country_id, @id]
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
  def self.find(id)
    sql = "SELECT * FROM cities WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    city = City.new(result.first)
    return city
  end
end
