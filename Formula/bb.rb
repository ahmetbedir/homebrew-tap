class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.3/bb-macos-arm64"
      sha256 "2f62b8964eeda3c4ce8d803e81bfbee9cf292cd6c50ea2044cc3c329bd7df199"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.3/bb-macos-x86_64"
      sha256 "c16cf0f75dd73459f66aa39031f7e86f880ee123e0529c7b01c01910272c58cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.3/bb-linux-arm64"
      sha256 "e7a50b1b2e76a8945f4942baa10d7e62c72a9880be10e9efc3540975c85c9a4c"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v1.0.3/bb-linux-x86_64"
      sha256 "94ce8d4ecb243bceac23e88798be080c24c705e009fb177847b436f88f0f897f"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
