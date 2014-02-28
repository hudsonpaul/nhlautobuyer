class AddRemainingTeams < ActiveRecord::Migration
def up
#AHL
Team.new({ea_id: 32, name: 'Abbotsford Heat', is_usable: false}).save
Team.new({ea_id: 33, name: 'Adirondack Phantoms', is_usable: false}).save
Team.new({ea_id: 34, name: 'Albany Devils', is_usable: false}).save
Team.new({ea_id: 35, name: 'Binghamton Senators', is_usable: false}).save
Team.new({ea_id: 36, name: 'Bridgeport Sound Tigers', is_usable: false}).save
Team.new({ea_id: 37, name: 'Charlotte Checkers', is_usable: false}).save
Team.new({ea_id: 38, name: 'Chicago Wolves®', is_usable: false}).save
Team.new({ea_id: 39, name: 'Grand Rapids Griffins', is_usable: false}).save
Team.new({ea_id: 40, name: 'Hamilton Bulldogs', is_usable: false}).save
Team.new({ea_id: 41, name: 'Hartford Wolf Pack', is_usable: false}).save
Team.new({ea_id: 42, name: 'Hershey Bears®', is_usable: false}).save
Team.new({ea_id: 43, name: 'Iowa Wild', is_usable: false}).save
Team.new({ea_id: 44, name: 'Lake Erie Monsters', is_usable: false}).save
Team.new({ea_id: 45, name: 'Manchester Monarchs', is_usable: false}).save
Team.new({ea_id: 46, name: 'Milwaukee Admirals', is_usable: false}).save
Team.new({ea_id: 47, name: 'Norfolk Admirals', is_usable: false}).save
Team.new({ea_id: 48, name: 'Oklahoma City Barons', is_usable: false}).save
Team.new({ea_id: 49, name: 'Portland Pirates', is_usable: false}).save
Team.new({ea_id: 50, name: 'Providence Bruins', is_usable: false}).save
Team.new({ea_id: 51, name: 'Rochester Americans', is_usable: false}).save
Team.new({ea_id: 52, name: 'Rockford IceHogs', is_usable: false}).save
Team.new({ea_id: 53, name: 'St. Johns IceCaps', is_usable: false}).save
Team.new({ea_id: 54, name: 'San Antonio Rampage', is_usable: false}).save
Team.new({ea_id: 55, name: 'Springfield Falcons', is_usable: false}).save
Team.new({ea_id: 56, name: 'Syracuse Crunch', is_usable: false}).save
Team.new({ea_id: 57, name: 'Texas Stars', is_usable: false}).save
Team.new({ea_id: 58, name: 'Toronto Marlies', is_usable: false}).save
Team.new({ea_id: 59, name: 'Utica Comets', is_usable: false}).save
Team.new({ea_id: 60, name: 'Wilkes-Barre/Scranton Penguins', is_usable: false}).save
Team.new({ea_id: 61, name: 'Worcester Sharks', is_usable: false}).save

#SHL
Team.new({ea_id: 62, name: 'AIK', is_usable: false}).save
Team.new({ea_id: 63, name: 'Brynäs IF', is_usable: false}).save
Team.new({ea_id: 64, name: 'Färjestads BK', is_usable: false}).save
Team.new({ea_id: 65, name: 'Frölunda HC', is_usable: false}).save
Team.new({ea_id: 66, name: 'HV71', is_usable: false}).save
Team.new({ea_id: 67, name: 'Leksands IF', is_usable: false}).save
Team.new({ea_id: 68, name: 'Linköpings HC', is_usable: false}).save
Team.new({ea_id: 69, name: 'Luleå HF', is_usable: false}).save
Team.new({ea_id: 70, name: 'MODO Hockey', is_usable: false}).save
Team.new({ea_id: 71, name: 'Orebro HK', is_usable: false}).save
Team.new({ea_id: 72, name: 'Skelleftea', is_usable: false}).save
Team.new({ea_id: 73, name: 'Växjö Lakers', is_usable: false}).save

#SM-LIGA
Team.new({ea_id: 74, name: 'Porin Ässät', is_usable: false}).save
Team.new({ea_id: 75, name: 'Espoo Blues', is_usable: false}).save
Team.new({ea_id: 76, name: 'Helsingin IFK', is_usable: false}).save
Team.new({ea_id: 77, name: 'HPK Hämeenlinna', is_usable: false}).save
Team.new({ea_id: 78, name: 'Tampereen Ilves', is_usable: false}).save
Team.new({ea_id: 79, name: 'Jokerit Helsinki', is_usable: false}).save
Team.new({ea_id: 80, name: 'JYP Jyväskylä', is_usable: false}).save
Team.new({ea_id: 74, name: 'Porin Ässät', is_usable: false}).save
Team.new({ea_id: 75, name: 'Espoo Blues', is_usable: false}).save
Team.new({ea_id: 76, name: 'Helsingin IFK', is_usable: false}).save
Team.new({ea_id: 77, name: 'HPK Hämeenlinna', is_usable: false}).save
Team.new({ea_id: 78, name: 'Tampereen Ilves', is_usable: false}).save
Team.new({ea_id: 79, name: 'Jokerit Helsinki', is_usable: false}).save
Team.new({ea_id: 80, name: 'JYP Jyväskylä', is_usable: false}).save
Team.new({ea_id: 81, name: 'KalPa Kuopio', is_usable: false}).save
Team.new({ea_id: 82, name: 'Oulun Kärpät', is_usable: false}).save
Team.new({ea_id: 83, name: 'Rauman Lukko', is_usable: false}).save
Team.new({ea_id: 84, name: 'Pelicans Lahti', is_usable: false}).save
Team.new({ea_id: 85, name: 'SaiPa Lappeenranta', is_usable: false}).save
Team.new({ea_id: 86, name: 'Tampereen Tappara', is_usable: false}).save
Team.new({ea_id: 87, name: 'TPS Turku', is_usable: false}).save


#DEL
Team.new({ea_id: 88, name: 'Augsburger Panther', is_usable: false}).save
Team.new({ea_id: 89, name: 'Eisbären Berlin', is_usable: false}).save
Team.new({ea_id: 90, name: 'Düsseldorfer EG', is_usable: false}).save
Team.new({ea_id: 91, name: 'Hamburg Freezers', is_usable: false}).save
Team.new({ea_id: 92, name: 'ERC Ingolstadt', is_usable: false}).save
Team.new({ea_id: 93, name: 'Iserlohn Roosters', is_usable: false}).save
Team.new({ea_id: 94, name: 'Kölner Haie', is_usable: false}).save
Team.new({ea_id: 95, name: 'Krefeld Pinguine', is_usable: false}).save
Team.new({ea_id: 96, name: 'Adler Mannheim', is_usable: false}).save
Team.new({ea_id: 97, name: 'EHC München', is_usable: false}).save
Team.new({ea_id: 98, name: 'Schwenningen Wild Wings', is_usable: false}).save
Team.new({ea_id: 99, name: 'Straubing Tigers', is_usable: false}).save
Team.new({ea_id: 100, name: 'Thomas Sabo Ice Tigers', is_usable: false}).save
Team.new({ea_id: 101, name: 'Grizzly Adams Wolfsburg', is_usable: false}).save

#O2
Team.new({ea_id: 102, name: 'HC Kometa Brno', is_usable: false}).save
Team.new({ea_id: 103, name: 'HC Mountfield', is_usable: false}).save
Team.new({ea_id: 104, name: 'Piráti Chomutov', is_usable: false}).save
Team.new({ea_id: 105, name: 'HC Energie Karlovy Vary', is_usable: false}).save
Team.new({ea_id: 106, name: 'Rytíři Kladno', is_usable: false}).save
Team.new({ea_id: 107, name: 'Bilí Tygři Liberec', is_usable: false}).save
Team.new({ea_id: 108, name: 'HC VERVA Litvinov', is_usable: false}).save
Team.new({ea_id: 109, name: 'HC ČSOB POJIŠŤOVNA Pardubice', is_usable: false}).save
Team.new({ea_id: 110, name: 'HC Plzeň 1929', is_usable: false}).save
Team.new({ea_id: 111, name: 'HC Slavia Praha', is_usable: false}).save
Team.new({ea_id: 112, name: 'HC Sparta Praha', is_usable: false}).save
Team.new({ea_id: 113, name: 'HC Oceláři Třinec', is_usable: false}).save
Team.new({ea_id: 114, name: 'HC Vítkovice Steel', is_usable: false}).save
Team.new({ea_id: 115, name: 'PSG Zlín', is_usable: false}).save

end

def down
  Team.where(:is_usable => false).each {|team| team.destroy }
end

end

