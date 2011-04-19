module ActiveSupport::CoreExtensions::Module

  # Given a target method and the feature name, returns the names of aliases
  # that ActiveSupport::CoreExtensions::Module#alias_method_chain typically
  # defines for the target method and feature.
  def method_chain_aliases(target, feature)
    # Strip out punctuation on predicates or bang methods since
    # e.g. target?_without_feature is not a valid method name.
    aliased_target, punctuation = target.to_s.sub(/([?!=])$/, ''), $1
    [
      "#{aliased_target}_with_#{feature}#{punctuation}".to_sym,
      "#{aliased_target}_without_#{feature}#{punctuation}".to_sym
    ]
  end

  # Given a target method and the feature name, returns the name of the alias
  # that ActiveSupport::CoreExtensions::Module#alias_method_chain typically
  # defines for the target method with the feature.
  def method_alias_with_feature(target, feature)
    method_chain_aliases(target, feature)[0]
  end

  # Given a target method and the feature name, returns the name of the alias
  # that ActiveSupport::CoreExtensions::Module#alias_method_chain typically
  # defines for the target method without the feature.
  def method_alias_without_feature(target, feature)
    method_chain_aliases(target, feature)[1]
  end

end
