class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.2/pbin-macos-arm64"
      sha256 "e7dbdd747c311bb7e5289571336c3940fee918f03d506f25779d4a2769a864d3"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.2/pbin-macos-x86_64"
      sha256 "ea63cda20d898fee8eec227c7b819e6098b005b3be6919ccaa27c2149aa8da6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.2/pbin-linux-arm64"
      sha256 "856ed385b0602437b2265d26264a7d10bc8ad05e0c0f7fa0accccbda2edf26b9"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.2/pbin-linux-x86_64"
      sha256 "48b53841a56757d9381f6dbaaff554488e1fcdb08d0a284d57841f8ebe3e0b36"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
