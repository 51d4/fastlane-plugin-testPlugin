describe Fastlane::Actions::FancysidaAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The fancysida plugin is working!")

      Fastlane::Actions::FancysidaAction.run(nil)
    end
  end
end
