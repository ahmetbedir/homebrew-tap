class Pbin < Formula
  desc "Create encrypted PrivateBin pastes from the terminal"
  homepage "https://github.com/ahmetbedir/pbin"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.3/pbin-macos-arm64"
      sha256 "dd04a2ecde076f8a3acbf5d33cd0d897b76c6060dad0eaf45e08d4ebbfd78e14"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.3/pbin-macos-x86_64"
      sha256 "f89dc48e2266cdce7f1b7ef0ff50d3e8518fa12ba6944b052ab23afdbc7a0a6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.3/pbin-linux-arm64"
      sha256 "4befc8ad05b2a3cd42c8c2380867eac0765594726911f1f5546abc31541e4854"
    end
    on_intel do
      url "https://github.com/ahmetbedir/pbin/releases/download/v1.0.3/pbin-linux-x86_64"
      sha256 "71bb937962aa996ce67777267bf0e52e00431712f104c336ab3e2b8ddfb4a9f4"
    end
  end

  def install
    bin.install Dir["pbin-*"].first => "pbin"
  end

  test do
    assert_match "pbin", shell_output("#{bin}/pbin --version")
  end
end
