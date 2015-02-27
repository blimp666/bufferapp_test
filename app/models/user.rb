class User
  include Mongoid::Document

  # oauth uid
  field :uid, type: String
  # oauth provider
  field :provider, type: String

end
