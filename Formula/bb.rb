class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.0.4"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.4/bb-macos-arm64"
      sha256 "654cf0ef1b384fa47c0250139f5d4a36a53464099cee3efa94d93515166c61bd"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.4/bb-macos-x86_64"
      sha256 "1c83dd350c60872f933e2e36e6e7f9b0befa9c2aee7b12b98494ea7193763341"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.4/bb-linux-arm64"
      sha256 "325ace6663f70293cc8c4c7c852678bd9fe5cc2f8c676b282c3af2fa838dea63"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.4/bb-linux-x86_64"
      sha256 "80f136acb1cab5dc7c3a78b289beb63e901d2435e0cd293bfd406765325c4fbf"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
