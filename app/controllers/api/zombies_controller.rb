# module Api
module API
  class ZombiesController < ApplicationController
  end
end

# In Rails, all classes must be in camel case in order to run, but we are
# used to acronyms all in caps, if we simply rename 'module Api' to
# 'module API' it won't work. So we have to add an entry to the inflections
# file: /config/initializers/inflections.rb
