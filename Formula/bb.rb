class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "2.0.3"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.3/bb-macos-arm64.tar.gz"
      sha256 "a7cd594ad84301d98141a0ec8bffa98c8d2d05b29993249f5f6f2d08bf762cff"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.3/bb-macos-x86_64.tar.gz"
      sha256 "f84258257881cb114719e8c8b302cffcf72881a2d9bbcf50ff8df04769286add"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.3/bb-linux-arm64.tar.gz"
      sha256 "7bf6761bf6417dcf4df788817b5fbfa49693b4f9a795d7750baa7ffb8ad9320e"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.3/bb-linux-x86_64.tar.gz"
      sha256 "ac999dbc0f1db0f37ebaf1e5298be833cbcc9f942f11659c8d9c76a171f4681a"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
