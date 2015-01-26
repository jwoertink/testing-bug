class Directory < ActiveRecord::Base

  has_many :appointments

  def self.by_name(name)
    find_by(name: name)
  end
end
