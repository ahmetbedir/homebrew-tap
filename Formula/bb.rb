class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.2/bb-macos-arm64"
      sha256 "24446ae74d4f6e227a0b2fa0ee188ef6d1e7e9c205c1e538183dca3071cffa2a"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.2/bb-macos-x86_64"
      sha256 "e3e0dfc285921408b0cb58d58d29883eb4a468b0ab528543ca5dccaf8f41dc76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.2/bb-linux-arm64"
      sha256 "5cd7ea7cb7c419caf8699e4d6c576924156c0b1a43166b5d6fc0788adf1e8947"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.2/bb-linux-x86_64"
      sha256 "280d69b021c9cb025ddb7eaab3e3d8c7eaf8f654e437777b3ec0e6853ca5be24"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
