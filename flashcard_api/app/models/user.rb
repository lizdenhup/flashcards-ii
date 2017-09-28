class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        # / start of regular exp
        # \A start of string
        # (...) capture everything enclosed that is
        # ^any single character except @, whitespace
        # @ is between capture groups
        # second capture group is alphanumeric
        # \z is end of string
        # \. is the dot
        # [a-z]{2,}\z is 2 or more of  anything in the a-z range
        record.errors[attribute] << (options[:message] || "is not an email")
      end
    end
end 

class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, email: true 
end
