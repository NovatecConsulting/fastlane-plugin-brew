describe Fastlane::Actions::BrewAction do
  describe '#run' do
    it 'runs command' do
      expect(Fastlane::UI).to receive(:command).with('brew update')
      expect(FastlaneCore::CommandExecutor).to receive(:execute).with(
        command: "env -i HOME=\"$HOME\" TERM=\"$TERM\" LC_CTYPE=\"${LC_ALL:-${LC_CTYPE:-$LANG}}\" PATH=\"$PATH\" USER=\"$USER\" brew update",
        print_all: true,
        print_command: false
      )

      Fastlane::Actions::BrewAction.run({ command: 'update' })
    end
  end
end
