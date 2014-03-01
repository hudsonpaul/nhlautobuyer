class AddRestOfTheTeams < ActiveRecord::Migration
  def up
    #National League
    Team.new({ea_id: 116, name: 'HC Ambri-Piotta', is_usable: false}).save
    Team.new({ea_id: 117, name: 'SC Bern', is_usable: false}).save
    Team.new({ea_id: 118, name: 'EHC Biel', is_usable: false}).save
    Team.new({ea_id: 119, name: 'HC Davos', is_usable: false}).save
    Team.new({ea_id: 120, name: 'HC Fribourg-Gottéron', is_usable: false}).save
    Team.new({ea_id: 121, name: 'Genève-Servette HC', is_usable: false}).save
    Team.new({ea_id: 122, name: 'Kloten Flyers', is_usable: false}).save
    Team.new({ea_id: 123, name: 'HC Lausanne', is_usable: false}).save
    Team.new({ea_id: 124, name: 'HC Lugano', is_usable: false}).save
    Team.new({ea_id: 125, name: 'Rapperswil-Jona Lakers', is_usable: false}).save
    Team.new({ea_id: 126, name: 'ZSC Lions', is_usable: false}).save
    Team.new({ea_id: 127, name: 'EV Zug', is_usable: false}).save

    #National
    Team.new({ea_id: 128, name: 'Austria', is_usable: false}).save
    Team.new({ea_id: 129, name: 'Belarus', is_usable: false}).save
    Team.new({ea_id: 130, name: 'Canada', is_usable: false}).save
    Team.new({ea_id: 131, name: 'Czech Republic', is_usable: false}).save
    Team.new({ea_id: 132, name: 'Denmark', is_usable: false}).save
    Team.new({ea_id: 133, name: 'Finland', is_usable: false}).save
    Team.new({ea_id: 134, name: 'France', is_usable: false}).save
    Team.new({ea_id: 135, name: 'Germany', is_usable: false}).save
    Team.new({ea_id: 136, name: 'Great Britain', is_usable: false}).save
    Team.new({ea_id: 137, name: 'Italy', is_usable: false}).save
    Team.new({ea_id: 138, name: 'Japan', is_usable: false}).save
    Team.new({ea_id: 139, name: 'Kazakstan', is_usable: false}).save
    Team.new({ea_id: 140, name: 'Latvia', is_usable: false}).save
    Team.new({ea_id: 141, name: 'Norway', is_usable: false}).save
    Team.new({ea_id: 142, name: 'Poland', is_usable: false}).save
    Team.new({ea_id: 143, name: 'Russia', is_usable: false}).save
    Team.new({ea_id: 144, name: 'Slovakia', is_usable: false}).save
    Team.new({ea_id: 145, name: 'Sweden', is_usable: false}).save
    Team.new({ea_id: 146, name: 'Switzerland', is_usable: false}).save
    Team.new({ea_id: 147, name: 'Ukraine', is_usable: false}).save
    Team.new({ea_id: 148, name: 'USA', is_usable: false}).save

    #OHL 
    Team.new({ea_id: 149, name: 'Barrie Colts', is_usable: false}).save
    Team.new({ea_id: 150, name: 'Belleville Bulls', is_usable: false}).save
    Team.new({ea_id: 151, name: 'Erie Otters', is_usable: false}).save
    Team.new({ea_id: 152, name: 'Guelph Storm', is_usable: false}).save
    Team.new({ea_id: 153, name: 'Kingston Frontenacs', is_usable: false}).save
    Team.new({ea_id: 154, name: 'Kitchener Rangers', is_usable: false}).save
    Team.new({ea_id: 155, name: 'London Knights', is_usable: false}).save
    Team.new({ea_id: 156, name: 'Mississauga Steelheads', is_usable: false}).save
    Team.new({ea_id: 157, name: 'Niagara IceDogs', is_usable: false}).save
    Team.new({ea_id: 158, name: 'North Bay Battalion', is_usable: false}).save
    Team.new({ea_id: 159, name: 'Oshawa Generals', is_usable: false}).save
    Team.new({ea_id: 160, name: 'Ottawa 67s', is_usable: false}).save
    Team.new({ea_id: 161, name: 'Owen Sound Attack', is_usable: false}).save
    Team.new({ea_id: 162, name: 'Peterborough Petes', is_usable: false}).save
    Team.new({ea_id: 163, name: 'Plymouth Whalers', is_usable: false}).save
    Team.new({ea_id: 164, name: 'Saginaw Spirit', is_usable: false}).save
    Team.new({ea_id: 165, name: 'Sarnia Sting', is_usable: false}).save
    Team.new({ea_id: 166, name: 'Sault Ste. Marie Greyhounds', is_usable: false}).save
    Team.new({ea_id: 167, name: 'Sudbury Wolves', is_usable: false}).save
    Team.new({ea_id: 168, name: 'Windsor Spitfires', is_usable: false}).save

    #QMJHL
    Team.new({ea_id: 169, name: 'Acadie-Bathurst Titan', is_usable: false}).save
    Team.new({ea_id: 170, name: 'Baie-Comeau Drakkar', is_usable: false}).save
    Team.new({ea_id: 171, name: 'Blainville-Boisbriand Armada', is_usable: false}).save
    Team.new({ea_id: 172, name: 'Cape Breton Screaming Eagles', is_usable: false}).save
    Team.new({ea_id: 173, name: 'Charlottetown Islanders', is_usable: false}).save
    Team.new({ea_id: 174, name: 'Chicoutimi Saguenéens', is_usable: false}).save
    Team.new({ea_id: 175, name: 'Drummondville Voltigeurs', is_usable: false}).save
    Team.new({ea_id: 176, name: 'Gatineau Olympiques', is_usable: false}).save
    Team.new({ea_id: 177, name: 'Halifax Mooseheads', is_usable: false}).save
    Team.new({ea_id: 178, name: 'Moncton Wildcats', is_usable: false}).save
    Team.new({ea_id: 179, name: 'Québec Remparts', is_usable: false}).save
    Team.new({ea_id: 180, name: 'Rimouski Océanic', is_usable: false}).save
    Team.new({ea_id: 181, name: 'Rouyn-Noranda Huskies', is_usable: false}).save
    Team.new({ea_id: 182, name: 'Saint John Sea Dogs', is_usable: false}).save
    Team.new({ea_id: 183, name: 'Shawinigan Cataractes', is_usable: false}).save
    Team.new({ea_id: 184, name: 'Sherbrooke Phoenix', is_usable: false}).save
    Team.new({ea_id: 185, name: 'Val-DOr Foreurs', is_usable: false}).save
    Team.new({ea_id: 186, name: 'Victoriaville Tigres', is_usable: false}).save

    #WHL
    Team.new({ea_id: 187, name: 'Brandon Wheat Kings', is_usable: false}).save
    Team.new({ea_id: 188, name: 'Calgary Hitmen', is_usable: false}).save
    Team.new({ea_id: 189, name: 'Edmonton Oil Kings', is_usable: false}).save
    Team.new({ea_id: 190, name: 'Everett Silvertips', is_usable: false}).save
    Team.new({ea_id: 191, name: 'Kamloops Blazers', is_usable: false}).save
    Team.new({ea_id: 192, name: 'Kelowna Rockets', is_usable: false}).save
    Team.new({ea_id: 193, name: 'Kootenay Ice', is_usable: false}).save
    Team.new({ea_id: 194, name: 'Lethbridge Hurricanes', is_usable: false}).save
    Team.new({ea_id: 195, name: 'Medicine Hat Tigers', is_usable: false}).save
    Team.new({ea_id: 196, name: 'Moose Jaw Warriors', is_usable: false}).save
    Team.new({ea_id: 197, name: 'Portland Winter Hawks', is_usable: false}).save
    Team.new({ea_id: 198, name: 'Prince Albert Raiders', is_usable: false}).save
    Team.new({ea_id: 199, name: 'Prince George Cougars', is_usable: false}).save
    Team.new({ea_id: 200, name: 'Red Deer Rebels', is_usable: false}).save
    Team.new({ea_id: 201, name: 'Regina Pats', is_usable: false}).save
    Team.new({ea_id: 202, name: 'Saskatoon Blades', is_usable: false}).save
    Team.new({ea_id: 203, name: 'Seattle Thunderbirds', is_usable: false}).save
    Team.new({ea_id: 204, name: 'Spokane Chiefs', is_usable: false}).save
    Team.new({ea_id: 205, name: 'Swift Current Broncos', is_usable: false}).save
    Team.new({ea_id: 206, name: 'Tri-City Americans', is_usable: false}).save
    Team.new({ea_id: 207, name: 'Vancouver Giants', is_usable: false}).save
    Team.new({ea_id: 208, name: 'Victoria Royals', is_usable: false}).save
  end

  def down
    Team.where(:is_usable => false).each {|team| team.destroy }
  end
end
