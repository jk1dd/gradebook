require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'attributes' do
    it "responds to name" do
      student = Student.new

      expect(student).to respond_to(:name)
    end
  end
end
