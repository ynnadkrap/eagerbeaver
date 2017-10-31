require "eagerbeaver/version"

class EagerBeaver
  def initialize(model, preloads)
    @model = model
    @preloads = Array(preloads)
  end

  def errors
    trace(model, preloads).flatten.compact
  end

  private

  def trace(model, assoc)
    model_class = model.to_s.singularize.classify
    associations = model_class.constantize.reflect_on_all_associations.map(&:name)

    if assoc.is_a?(Array)
      assoc.map { |a| trace(model, a) }
    elsif assoc.is_a?(Hash)
      key = model_class.constantize.reflect_on_all_associations.find do |a|
        a.name == assoc.keys.first
      end.try(:source_reflection_name) || assoc.keys.first

      val = Array(trace(key, assoc.values.first))
      val << trace(model, assoc.keys.first)
    elsif assoc.is_a?(Symbol) && !associations.include?(assoc)
      "#{assoc} is not an association of #{model_class}"
    end
  end

  attr_reader :model, :preloads
end
