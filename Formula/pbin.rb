class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.0/pbin-macos-arm64"
      sha256 "a825e5f2479de0b8a30b6b0a04c3e04eecfbbc62513d88a329928f10848bcc38"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.0/pbin-macos-x86_64"
      sha256 "8804861b1be6481b1bf7a4372eb8b84b29a827b67bf56de22330c20bea60e445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.0/pbin-linux-arm64"
      sha256 "7c356916e71bb77ac623919148007980bf652ed7f187a5965870ec54f070246e"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.0/pbin-linux-x86_64"
      sha256 "c1c4c32a3df7140b7b74c88cda7e573a224e1a87f5d69111da629de032204bfc"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
