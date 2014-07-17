require "forwardable"
require "json"

require "linguistics_latin"

require "latinverb_irregular_verb_definition_consumer/version"
require "latinverb_irregular_verb_definition_consumer/json_deserializer"
require "latinverb_irregular_verb_definition_consumer/irregular_verb_serialization_retriever"


module Linguistics
  module Latin
    module Verb
     class LatinVerb
        class IrregularVerbDefinitionConsumer
          def initialize(lookup_string)
            @lookup_string = lookup_string
          end

          def structure
            @structure ||= JsonDeserializer.new(@lookup_string).revivified_data_structure
          end
        end
      end
    end
  end
end
