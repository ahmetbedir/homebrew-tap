class Bb < Formula
  desc "gh-style command-line client for Bitbucket Cloud"
  homepage "https://github.com/ahmetbedir/bb"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.0/bb-macos-arm64"
      sha256 "cbefdcfc4c0ec1669132abd964a27fc615c5de8fec45917430b096c0d1582769"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.0/bb-macos-x86_64"
      sha256 "62b74c92f7c6ee390e7389403db37edb004eb9097788bd41207df2450b78915f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.0/bb-linux-arm64"
      sha256 "aa4dbd19f318bafc477b7642ee6bed45b7058be79813838fe6770bbf4f431bcf"
    end
    on_intel do
      url "https://github.com/ahmetbedir/bb/releases/download/v2.0.0/bb-linux-x86_64"
      sha256 "eed0f16eb4dfeba92df8cc4ebb9a750e6e1e29d77a5ebae2568f7d8de05be597"
    end
  end

  def install
    bin.install Dir["bb-*"].first => "bb"
  end

  test do
    assert_match "Bitbucket CLI Tool", shell_output("#{bin}/bb --version")
  end
end
