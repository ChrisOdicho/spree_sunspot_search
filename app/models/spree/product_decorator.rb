unless Spree::Sunspot::Setup.configuration.nil?
  Spree::Product.class_eval do
		ActiveRecord::Base.include(Extensions::ActiveRecord::FindByOrderedIds)
  	Spree::Sunspot::Setup.configuration
  end
end
