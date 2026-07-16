class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.5/bb-macos-arm64"
      sha256 "84b50142a0d103d05553fb40d96bf4245d58b04dd57ac87dcd03457171ae4ba7"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.5/bb-macos-x86_64"
      sha256 "262e5bcaa63f5f0c28792503e9d5221f59435f9e765d8929d132fd082aeb4d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.5/bb-linux-arm64"
      sha256 "de80acd32c5088d38f5b7a7c4abc0da21705d43572c0faf1b9a11173defcda55"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.5/bb-linux-x86_64"
      sha256 "f178775312a0c4c3b4c9f391ca3aaa62d5866d413298276c5ce32210548be942"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
