# Write your code below game_hash
require 'pry'
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
def num_points_scored(player_name)
 #binding.pry
 i = 0
 while i < game_hash[:home][:players].size || i < game_hash[:away][:players].size
  if game_hash[:home][:players][i][:player_name] == player_name
   return game_hash[:home][:players][i][:points]
  elsif game_hash[:away][:players][i][:player_name] == player_name
   return game_hash[:away][:players][i][:points]
  end
  i += 1 
  end
end 

def shoe_size(player_name)
  i = 0 
  while i < game_hash[:home][:players].size || i < game_hash[:away][:players].size 
    if game_hash[:home][:players][i][:player_name] == player_name
      return game_hash[:home][:players][i][:shoe]
    elsif game_hash[:away][:players][i][:player_name] == player_name
      return game_hash[:away][:players][i][:shoe]
    end 
   i += 1 
  end 
end 

def team_colors(team_name)
 # binding.pry 
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team_name
    game_hash[:away][:colors]
  end 
end 

def team_names
  name_array = []
  name_array.push(game_hash[:home][:team_name])
  name_array.push(game_hash[:away][:team_name])
end 

def player_numbers(team_name)
  number_array = []
  i = 0 
  while i < game_hash[:home][:players].size || i < game_hash[:away][:players].size 
    if game_hash[:home][:team_name] == team_name 
      number_array << game_hash[:home][:players][i][:number]
    elsif game_hash[:away][:team_name] == team_name 
      number_array << game_hash[:away][:players][i][:number]
    end
    i += 1 
  end 
  number_array.sort!
end 

def player_stats(player_name)
  player_stats_hash = {}
  i = 0
  while i < game_hash[:home][:players].size || i < game_hash[:away][:players].size 
    if game_hash[:home][:players][i][:player_name] == player_name
      player_stats_hash = game_hash[:home][:players][i]
    elsif game_hash[:away][:players][i][:player_name] == player_name 
      player_stats_hash = game_hash[:away][:players][i]
    end 
   i += 1 
  end 
  player_stats_hash 
end 

def big_shoe_rebounds
  shoe_array = []
  i = 0 
  while i < game_hash[:home][:players].size || i < game_hash[:away][:players].size 
    shoe_array << game_hash[:home][:players][i][:shoe]
    shoe_array << game_hash[:away][:players][i][:shoe]
    shoe_array.sort!
    i += 1 
  end 
  # binding.pry 
    j = 0 
    while  j < game_hash[:home][:players].size || j < game_hash[:away][:players].size 
      if shoe_array[shoe_array.length - 1] == game_hash[:home][:players][j][:shoe]
        return game_hash[:home][:players][j][:rebounds]
      elsif shoe_array[shoe_array.length - 1] == game_hash[:away][:players][j][:shoe]
       return game_hash[:away][:players][j][:rebounds]
      end
      j += 1 
    end 
end 