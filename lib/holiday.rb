require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_supplies[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|

    if season == :winter
      holiday.each do |holiday, decorations|
        decorations << supply
      end
    end
  end


  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
 holiday_hash.each do |season, holiday|
   if season == :winter
    return holiday.values.flatten
   end
 end

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, things|

      new_holiday = holiday.to_s.split("_").map{|word| word.capitalize}.join" "

      puts "  #{new_holiday}: #{things.join", "}"

  end
  end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, stuff|
      
      if stuff.to_s.include?("BBQ")
        array << holiday
      end
    end
  end

    array

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
