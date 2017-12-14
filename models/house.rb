require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses (name)
    VALUES ($1)
    RETURNING id;"
    values = [@name]
    house = SqlRunner.run(sql, values).first()
    @id = house['id'].to_i
  end

  def find()
    sql = "SELECT * FROM houses
    WHERE id = $1"
    values =[@id]
    house_hash = SqlRunner.run(sql, values).first()
    return House.new(house_hash)
  end

  def self.find_by_name(name)
    sql = "SELECT * from houses
    WHERE name = $1"
    values = [name]
    house_hash = SqlRunner.run(sql, values).first()
    return House.new(house_hash)
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    house_hashes = SqlRunner.run(sql)
    result = house_hashes.map {|house| House.new(house)}
    return result
  end


end
