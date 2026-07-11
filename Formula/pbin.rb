class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.1/pbin-macos-arm64"
      sha256 "e2c98fac4ce9f95c0c640b59c1e8831ba92b71c115b8b4e448ee51a325f23155"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.1/pbin-macos-x86_64"
      sha256 "4eab55bc9bba62e436e3a901d5759462b18b3ac9a4d77dc32ab693a2aba78b0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.1/pbin-linux-arm64"
      sha256 "c686f13194a0b73c5f40d68d7ae0303b44ab3c0d4d5368a133c2d4ef2bf8d781"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.1/pbin-linux-x86_64"
      sha256 "4bd4a5dc0fc4072934281159e5354a78ef8baf1072902716099ca86166bf0681"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
