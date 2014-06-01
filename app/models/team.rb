class Team < ActiveRecord::Base

  include Redis::Objects

  #Including Redis::Objects in a model class makes it trivial to integrate Redis types with an existing ActiveRecord,
  #DataMapper, Mongoid, or similar class. Redis::Objects will work with any class that provides an id method that returns a
  #unique value.

                                                                                                                                                                                                                                                         lock :trade_players, :expiration => 15  # sec
  value :at_bat
  counter :hits
  counter :runs
  counter :outs
  counter :inning, :start => 1
  list :on_base
  list :coaches, :marshal => true
  set  :outfielders
  hash_key :pitchers_faced  # "hash" is taken by Ruby
  sorted_set :rank, :global => true

end


