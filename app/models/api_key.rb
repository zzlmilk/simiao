class ApiKey < ActiveRecord::Base
  attr_accessible :access_token, :expires_at, :user_id, :active, :application
end
