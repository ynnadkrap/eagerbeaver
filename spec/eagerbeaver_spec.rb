require "spec_helper"

      #[
        #:lease_terms,
        #{ spaces: :floor },
        #{ spaces: { floor: [:property, :right_targets] } },
        #{ spaces: { floor: :property } },
        #:tenant,
        #:activity_log,
        #{ spaces: { targeted_by: { lease_term: :space_lease_terms } } }
      #]

RSpec.describe EagerBeaver do
  describe 'lease' do
    let!(:model) { :lease }

    context 'when all associations exist' do
      let!(:includes) do
        [
          :lease_terms,
          { spaces: :floor },
          { spaces: { floor: [:property, :right_targets] } },
          { spaces: { floor: :property } },
          :tenant,
          { spaces: { targeted_by: { lease_term: :space_lease_terms } } }
        ]
      end

      subject { described_class.new(model, includes) }

      it 'returns an empty array' do
        expect(subject.errors).to be_empty
      end
    end
  end
end
