# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format 
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^([a-z_]+)([^aeiou])$/i, '\1\2es'
  inflect.singular /^([a-z_]+)(es)$/, '\1'
end