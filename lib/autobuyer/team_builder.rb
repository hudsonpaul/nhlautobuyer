require 'active_support/core_ext/hash/conversions'

file = File.open("teams.xml")
xml = file.read
hash = Hash.from_xml(xml)

results = {}

hash["issearch"]["searchresults"]["istradeinfo"].each do |trade|
 results[trade["carddata"]["teamid"].to_i] = trade["carddata"]["strdata"]["strdata"][3]
end

results.keys.sort.each do |key|
  puts "Team.new({ea_id: #{key}, name: '#{results[key]}', is_usable: false}).save"
end

