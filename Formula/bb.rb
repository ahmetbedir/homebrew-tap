class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "2.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.2/bb-macos-arm64"
      sha256 "f34c1a208b640949d74f712d502d36c61b7828e106e8a21db1fff6499cfed729"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.2/bb-macos-x86_64"
      sha256 "d6fa70b8ca3565429a5db9b37df73f5b473dce05e66945d520301776acd35370"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.2/bb-linux-arm64"
      sha256 "b0dd9c19e4fdba9c2de70fc92a7181e2b040286e682632bba3d4334f9a62734c"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.2/bb-linux-x86_64"
      sha256 "164715224c3f7a43ad4cd6c62c8cf65fdc149cb77cc1cc7fe51766a95e2297de"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
