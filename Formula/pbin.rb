class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.0/pbin-macos-arm64"
      sha256 "825e4f6b6bfe2eacfaa69b4f772febe0b6488bdfbc2edd61b8594099390bd0b4"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.0/pbin-macos-x86_64"
      sha256 "cd543d2db6026cdaf0f64e601c8ce73f012355e1789c3941db6389df0fdbd03d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.0/pbin-linux-arm64"
      sha256 "b47f80061e391eaac0fe90de48a569cc7b00a27f5345e4a697ae469c88a4bd66"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.1.0/pbin-linux-x86_64"
      sha256 "a295ca33c478ccdabb257ceb984a891ba360324c9f693f5d39a5d4bc06e6f311"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
