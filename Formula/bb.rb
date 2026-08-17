class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.1.0/bb-macos-arm64"
      sha256 "2cda3b2e6c63ea329e1a54bfce4b342de454da0583828ac203d0b855882780fa"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.1.0/bb-macos-x86_64"
      sha256 "0420d685c5c617d6075606a65debc4feea0bd75a0fe66da909cbd178f8193026"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.1.0/bb-linux-arm64"
      sha256 "23960d12386449c8a83fd2d1936b96837d7d5c24793293b842030d96fa7a9b76"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.1.0/bb-linux-x86_64"
      sha256 "893c40ee2b637ac11e891d97f0decb80aaf08b236a103460f8f60868263bc43c"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
