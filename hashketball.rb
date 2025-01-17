# Write your code here!
require "pry"


def game_hash
    game_hash = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players => 
                [{"Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
            }}, {"Reggie Evans" => {
                #:player_name => "Reggie Evans",
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
            }},  {"Brook Lopez" => {
                #:player_name => "Brook Lopez"
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
            }},  {"Mason Plumlee" => {
                #:player_name = "Mason Plumlee",
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 11,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
            }}, { "Jason Terry" => {
                #:player_name = "Jason Terry",
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1
            }}

            ]
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players =>  
                [{"Jeff Adrien" => {
                # :player_name => "Jeff Adrien"
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2,
            }}, {"Bismack Biyombo" => {
                #:player_name = "Bismack Biyombo",
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 22,
                :blocks => 15,
                :slam_dunks => 10,
            }}, { "DeSagna Diop" => {
                #:player_name => "DeSagna Diop",
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5,
            }}, { "Ben Gordon" => {
                #:player_name => "Ben Gordon",
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0,
            }},  { "Kemba Walker" => {
                #:player_name => "Kemba Walker",
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 7,
                :blocks => 5,
                :slam_dunks => 12
            }}]

}
    }
    

end


#def num_points_scored(player)
#    game_hash.each do |team_position, data|
 #       players_array = data[:players]
  #      players = players_array.keys
   #     if players.include? (player)
    #        return data[player][:points]
     #      else
      #          return nil
       #     end
        #   end
   # end

def num_points_scored(player)
    game_hash.each do |team_position, data|
    players_array = data[:players]
    players_array.each do |player_hash|
        player_hash.each do |player_name, player_stats|
            if player_name == player
                    #binding.pry
            return player_stats[:points]
            end
            end
        end
    end
end

num_points_scored("Reggie Evans")

def team_colors(team_name)
    game_hash.each do |team_position, data|
        if data[:team_name] == team_name 
            #binding.pry
           return data[:colors].flatten
        else
            nil
        end
    end
end


def shoe_size(player)
    game_hash.each do |team_position, data|
        players_array = data[:players]
        players_array.each do |player_hash|
            player_hash.each do |player_name, player_stats|
                if player_name == player
                    return player_stats[:shoe]
                end
            end
        end
    end
end

def team_names
    team_array=[]
    game_hash.each do |team_position, data|
      team_array <<  data[:team_name]
    end
    return team_array
end


def player_numbers(team)
    number_array = []
    game_hash.each do |team_position, data|
        if data[:team_name] == team
        data[:players].each do |player_hash|
            player_hash.each do |player_name, player_stats|
              number_array <<  player_stats[:number]
            end
        end
    end
    end
    return number_array
end

def player_stats(player)
    game_hash.each do |team_position, data|
        players_array = data[:players]
        players_array.each do |player_hash|
            player_hash.each do |player_name, player_stats|
            if player_name == player
                return player_stats
            end
        end
    end
end
end

def big_shoe_rebounds
    shoe_zero = 0
    rebounds = 0 
    game_hash.each do |team_position, data|
        data[:players].each do |player_hash|
            player_hash.each do |player_name, player_stats|
                if player_stats[:shoe] > shoe_zero
                    shoe_zero = player_stats[:shoe]
                    rebounds = player_stats[:rebounds]
                end
            end
        end
    end
    return rebounds

end

def most_points_scored
    points = 0 
    most_player = 0
    game_hash.each do |team_position, data|
        data[:players].each do |player_hash|
            player_hash.each do |player_name, player_stats|
                if player_stats[:points] > points
                    points = player_stats[:points]
                    most_player = player_name
                end
            end
        end
    end
    return most_player
end

def winning_team
    points = 0
    team = 0
    game_hash[:home].each do |
                












