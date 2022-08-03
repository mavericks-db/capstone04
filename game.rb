require 'date'
require_relative './item'

class Game < Item
<<<<<<< HEAD
  attr_accessor :multiplayer, :last_played_at, :publish_year
  attr_reader :id, :publish_date
=======
  attr_accessor :multiplayer, :last_played_at, :publish_date
  attr_reader :id
>>>>>>> 64e17a0ce757e7f2d79a6d94b8bcf077a641cbd1

  def initialize(multiplayer, last_played_at, publish_date)
    super(id = Random.rand(1..1000))
    @id = id
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_date = publish_date
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    @archived = if super || Date.today - Date.parse(@last_played_at) > 2 * 365
                  true
                else
                  false
                end
  end
end
