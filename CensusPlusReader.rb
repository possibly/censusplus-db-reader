require 'json'

module CensusPlusReader

  def self.to_json(path_to_lua)
    JSON.parse(`lua to_json.lua #{path_to_lua} CensusPlus_Database`)
  end

end
