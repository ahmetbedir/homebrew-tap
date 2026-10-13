class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.2.0/bb-macos-arm64"
      sha256 "a4402178418be309ca70ab3a8fffa41adffeb34fc994fd728f709d1f29025d44"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.2.0/bb-macos-x86_64"
      sha256 "61897652b5f1135dd509457bba34c354f67d738a32db6454f3d97a96048d23f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.2.0/bb-linux-arm64"
      sha256 "ff3857be9181f15a7f04ff2ad63c652c9102317a859b4d6a4b27031c1787eecc"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.2.0/bb-linux-x86_64"
      sha256 "a4480b21f516e4038a5ef3b3a6e6dcb9945842d63b319ded2cc6bf4b844de749"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
