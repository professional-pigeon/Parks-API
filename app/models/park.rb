class Park < ApplicationRecord
end
#   scope :top_rated, -> { where(rating: 5).limit(5)}
#   scope :search, -> (parameter) { where('LOWER(country) like ?', "%#{parameter.downcase}%")}
#   scope :city_search, -> (parameter) { where('LOWER(city) like ?', "%#{parameter.downcase}%")}

#   def self.new_search2(parameter1, parameter2)
#     where('LOWER(country) like ?', parameter1.downcase).or(Review.where('LOWER(city) like ?', parameter2.downcase))
#   end

#   def self.number_of_reviews
#     reviews = Review.all
#     country_hash = {}
#     reviews.each { |review|
#       country = review.country.downcase
#       if(!country_hash.keys.include?(country)) 
#         country_hash[country]=1
#       else
#         country_hash[country] += 1
#       end
#     }
#     country_hash.max_by{|k,v| v}[0]
#   end

#   def self.average_rating
#     reviews = Review.all
#     country_hash = {}
#     ratings_hash = {}
#     average_hash = {}
#     reviews.each { |review|
#       country = review.country.downcase
#       rating = review.rating
#       if(!country_hash.keys.include?(country)) 
#         country_hash[country]=1
#         ratings_hash[country] = rating
#       else
#         country_hash[country] += 1
#         ratings_hash[country] += rating
#       end
#     }
#     country_hash.each { |element|
#       average_hash[element[0]] = ratings_hash[element[0]] / country_hash[element[0]] 
#     }
#     average_hash.max_by{|k,v| v}[0]
#   end

#   def self.random_country
#     reviews = Review.all
#     country_hash = {}
#     reviews.each { |review|
#       country = review.country.downcase
#       if(!country_hash.keys.include?(country)) 
#         country_hash[country]=1
#       else
#         country_hash[country] += 1
#       end
#     }
#     number = rand(0..country_hash.keys.length-1)
#     Review.search(country_hash.keys[number])
#   end
# end
