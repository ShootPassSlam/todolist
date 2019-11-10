class Todo < ApplicationRecord
  def url
    "https://todolistrailsdss.herokuapp.com/#{id}"
  end

  def serializable_hash config
    super(config).merge(url: url)
  end

    # validations
    validates_presence_of :title
end
