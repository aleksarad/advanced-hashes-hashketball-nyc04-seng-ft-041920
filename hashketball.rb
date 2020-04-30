# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

# p game_hash[:home][:team_name]

def num_points_scored (player)
  game_hash.each do |home_away, outer_value| 
    outer_value[:players].each do |key|
      if key[:player_name] == player 
        return key[:points]
      end
    end
  end
end

def shoe_size (player)
    game_hash.each do |home_away, outer_value| 
    outer_value[:players].each do |key|
      if key[:player_name] == player 
        return key[:shoe]
      end
    end
  end
end 

def team_colors (team_name)
  game_hash.each do |home_away, outer_value|
    if outer_value[:team_name] == team_name
      return outer_value[:colors]
    end
  end
end

def team_names
names = []
  game_hash.each do |home_away, outer_value|
    names.push(outer_value[:team_name])
  end
  return names
end

def player_numbers (team_name)
  team_numbers = []
  game_hash.each do |home_away, outer_value|
    if outer_value[:team_name] == team_name
      outer_value[:players].each do |key, inner_val|
        team_numbers.push(key[:number])
      end
    end
  end
  return team_numbers
end

def player_stats (player)
  stats = {}
  game_hash.each do |home_away, outer_value|
    outer_value[:players].each do |key, inner_val|
      if key[:player_name] == player 
        return key
      end
    end
  end
end

def big_shoe_rebounds
  game_hash.each do |home_away, outer_value|
    outer_value[home_away][:players].each do |player|
     pp player
    end
  end
end

big_shoe_rebounds