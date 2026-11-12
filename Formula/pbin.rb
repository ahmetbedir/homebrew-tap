class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.1/pbin-macos-arm64.tar.gz"
      sha256 "c3d46a2171e614facfe0d523ba665c79aaade00e4792d33e9c31a869b93a9d5f"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.1/pbin-macos-x86_64.tar.gz"
      sha256 "aa39cfb2688cf030a088c4115c8ea4865fb449b9071628510ea19471c32f0fcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.1/pbin-linux-arm64.tar.gz"
      sha256 "e9a96154ab2f44c05d50f7f901f8abf592c58033663fb7fc4b0b8033776049ea"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.1/pbin-linux-x86_64.tar.gz"
      sha256 "4ce7a54207781330029990ba9f37d23b5a0c568c19d378b89899691610a001ca"
    end
  end

  def install
    bin.install "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
