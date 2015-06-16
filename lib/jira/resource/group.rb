require 'pry'

module JIRA
  module Resource

    class GroupFactory < JIRA::BaseFactory # :nodoc:
    end

    class Group < JIRA::Base
      # Finds and retrieves a resource with the given ID.
      def self.find(client, key, options = {})
        instance = self.new(client, options)
        instance.fetch(false, {groupname: key, expand: 'users'})
        instance
      end
    end

  end
end
