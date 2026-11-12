class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.0.4"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.4/pbin-macos-arm64"
      sha256 "576db47ba46647c12818afc5728a3991e35b23ffdfcf3150c5e56a413c677942"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.4/pbin-macos-x86_64"
      sha256 "3978f9d2bdf0a538d032274eee71c599560a5c77e16a4fdf4e1a7a9b41e83342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.4/pbin-linux-arm64"
      sha256 "988980915514754323a900446243d81d80bece9e4bc7c6e87a65681b6b5dccab"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.4/pbin-linux-x86_64"
      sha256 "67bdb04c5aea9c28cd405e5a4e6efcd0b37e6ee2d542ad95b1e0c88d8524b64d"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
