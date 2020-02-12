require_relative("../db/sql_runner")
class Continent

attr_reader :id
attr_accessor :name
  def initialize(options)
    @id = options["id"].to_i() if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO continents (name) VALUES ($1) RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i()
  end

  def update()
    sql = "UPDATE continents SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql = "DELETE FROM continents WHERE id = $1"
    values = [@id]
    SqlRunner(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM continents"
    result = SqlRunner.run(sql)
    continents = result.map{|continent| Continent.new(continent)}
    return continents
  end

  def self.delete_all()
    sql = "DELETE FROM continents"
    SqlRunner.run(sql)
  end
  
  def self.find(id)
    sql = "SELECT * FROM continents WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    continent = Continent.new(result.first)
    return continent
  end
end
