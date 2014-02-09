class Note
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, default: ""
end