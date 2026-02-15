# typed: false
# frozen_string_literal: true

class Ctrlc < Formula
  desc "CLI tool for Ctrlplane - deployment orchestration platform"
  homepage "https://github.com/ctrlplanedev/cli"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_x86_64.tar.gz"
      sha256 "f0828ca0ce65d0a1c0a860affb5c09c0ca4db0d56503e9207b3c0121d0a1bbb2"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_arm64.tar.gz"
      sha256 "ceb8b1f3ae37d5d156651c307858f389d8d85ebba1c70b26e102710a935a9598"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_x86_64.tar.gz"
      sha256 "b2ba10ec12b4c8fa8691957374e0f67516029900affaf2073bae2709dfca3e2d"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_arm64.tar.gz"
      sha256 "c90bc22a2b1fdf76f6ef7b8300b8e8f31be62820b64f82cb5358755253d56274"
    end
  end

  def install
    bin.install "ctrlc"
  end

  test do
    system "#{bin}/ctrlc", "--version"
  end
end

