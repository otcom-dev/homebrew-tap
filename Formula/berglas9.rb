class Berglas9 < Formula
  desc "Terminal UI for listing, reading, and writing Berglas secrets"
  homepage "https://github.com/otcom-dev/berglas9"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/otcom-dev/berglas9/releases/download/v0.1.0/berglas9_darwin_arm64.tar.gz"
      sha256 "849e02e274ed03d9557a73b4a14cdf3f77ec0e0d326e494d33baac6432411e6f"
    else
      url "https://github.com/otcom-dev/berglas9/releases/download/v0.1.0/berglas9_darwin_amd64.tar.gz"
      sha256 "b78d066e14b9a94f1f051bcc8af741b5768998f568b920494e9db2e0d5043b0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/otcom-dev/berglas9/releases/download/v0.1.0/berglas9_linux_arm64.tar.gz"
      sha256 "3e25e0daee21d0af94b471da0981ee40b61e6df60bcb03894620132716cd0014"
    else
      url "https://github.com/otcom-dev/berglas9/releases/download/v0.1.0/berglas9_linux_amd64.tar.gz"
      sha256 "bf2035f6dc7bd86dd9273b248350a5229e49bafae66385c70e95fc19562b9539"
    end
  end

  def install
    bin.install "berglas9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/berglas9 --version")
  end
end
