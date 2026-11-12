class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "2.0.1"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.1/bb-macos-arm64"
      sha256 "df2e8c5c7166565fd6a60b19a13729833c274237bb8fa7a90ee06675fc77008d"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.1/bb-macos-x86_64"
      sha256 "b29ebf1d995895c4502a2c8da454288a0445e2d5a970e8a868b2fd630e4f5c86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.1/bb-linux-arm64"
      sha256 "d63e6ff55aa37e3f854a4eac02fc635b63fd87999ebbd3ea2e8d2801f84ebfce"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.1/bb-linux-x86_64"
      sha256 "69ec3a57c853e7179bf4cc16e6df07895f57681f6322f1ccec20431ea7b860a9"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
