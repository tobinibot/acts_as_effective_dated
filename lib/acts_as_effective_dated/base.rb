module ActiveRecord #:nodoc:
  module Acts #:nodoc:
    module EffectiveDated
      def self.included(base) # :nodoc:
        base.extend ClassMethods
      end

      module ClassMethods
        def acts_as_effective_dated(options = {})
          # don't allow multiple calls
          return if self.included_modules.include?(ActiveRecord::Acts::EffectiveDated::ActMethods)
        
          class_eval do
            include ActiveRecord::Acts::EffectiveDated::ActMethods
            # cattr_accessor :versioned_class_name, :versioned_foreign_key, :versioned_table_name, :versioned_inheritance_column, 
            #               :version_column, :max_version_limit, :track_changed_attributes, :version_condition, :version_sequence_name
            #             attr_accessor :changed_attributes
          end
          
          # class << self
            # alias_method :original_save, :save
          # end
        end  
      end
      
      module ActMethods
        # def self.included(base) # :nodoc:
          # base.extend ClassMethods
        # end
        
        def ed
          puts "this model is effective dated"
        end
        
        
        
        
        def save
          if new_record?
            puts "new model"
            begins_at = Date.today
          else
            puts "existing model"
          end
          
          original_save
        end
      end
    end
  end

  ActiveRecord::Base.send :include, ActiveRecord::Acts::EffectiveDated
end 