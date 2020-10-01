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

def num_points_scored(name)
  game = game_hash

  counter=0
  counter1=0
  home_players=[]
  away_players=[]
  
  while counter < 5 do
  home_players << game[:home][:players][counter][:player_name]
  counter+=1
  end
  
  if home_players.include?(name)
    return game[:home][:players][home_players.index(name)][:points]
  else 
    while counter1 < 5 do
  away_players << game[:away][:players][counter1][:player_name]
  counter1+=1
  end
    if away_players.include?(name)
      return game[:away][:players][away_players.index(name)][:points]
    end
  end
end

def shoe_size (name)
  game = game_hash
  location = ""
  counter=0
  counter1=0
  home_players=[]
  away_players=[]
  
  while counter < 5 do
  home_players << game[:home][:players][counter][:player_name]
  counter+=1
  end
  
  if home_players.include?(name)
    return game[:home][:players][home_players.index(name)][:shoe]
  else 
    while counter1 < 5 do
  away_players << game[:away][:players][counter1][:player_name]
  counter1+=1
  end
    if away_players.include?(name)
      return game[:away][:players][away_players.index(name)][:shoe]
    end
  end
end

def team_colors(t_name)
  game=game_hash
  if game[:home][:team_name]==t_name
    return game[:home][:colors]
  else
    return game[:away][:colors]
  end
end

def team_names
game = game_hash
team_names = []
team_names << game[:home][:team_name]
team_names << game[:away][:team_name]
team_names
end

def player_numbers(t_name)
  game = game_hash
  jersey_numbers=[]
  counter=0
  
  if game[:home][:team_name]== t_name 
    while counter < 5 do
    jersey_numbers << game[:home][:players][counter][:number]
    counter+=1
    end
  else 
    while counter <5 do
      jersey_numbers << game[:away][:players][counter][:number]
      counter+=1
  end
end
  jersey_numbers
end


def player_stats(name)
  game = game_hash
  game.each do |location, t_c_p|
    t_c_p.each do |key, value|
      if key==:players
        value.each do |player|
          if name==player[:player_name]
            return player
          end
        end
      end
    end
  end
  end

def big_shoe_rebounds
  max = 0 
  rebounds=0 
  game = game_hash
  
  game.each do |location, t_c_p|
    t_c_p[:players].each do |player|
      if player[:shoe] > max
        max = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end
