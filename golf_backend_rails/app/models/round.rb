class Round < ApplicationRecord
  belongs_to :course
  has_many :players, dependent: :destroy
  has_many :tees, through: :course
  

  after_save :add_players


  def add_players

    puts self.num_players
    self.num_players.times {
      |i| puts "player #{i +1 }"
      Player.create(round_id: self.id, name: "Player Name", hole_1: 0, hole_2: 0, hole_3: 0, hole_4: 0, hole_5: 0, hole_6: 0, hole_7: 0, hole_8: 0, hole_9: 0, out: 0, hole_10: 0, hole_11: 0, hole_12: 0, hole_13: 0, hole_14: 0, hole_15: 0, hole_16: 0, hole_17: 0, hole_18: 0, in: 0, total: 0 )
    }

  end
end
