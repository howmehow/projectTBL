require_relative("../db/sql_runner")

class City

attr_reader :id, :country_id
attr_accessor :name

  def initialize(options)
    @id = options["id"].to_i() if options["id"]
    @name = options["name"]
    @country_id = options["country_id"]
  end

  def save()
    sql = "INSERT INTO cities WHERE (name, country_id) VALUES ($1,$2)
    RETURNING id"
    values = [@name, @country_id]
    result = SqlRunner.run(sql,values)
    @id = result.first["id"].to_i()
  end
end
