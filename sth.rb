# Loads all your models into the memory
Rails.application.eager_load!

# Using all the models in the memory find the objects that extend the activerecord object
ActiveRecord::Base.descendants
