# typed: false
# frozen_string_literal: true

class Ctrlc < Formula
  desc "CLI tool for Ctrlplane - deployment orchestration platform"
  homepage "https://github.com/ctrlplanedev/cli"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    on_arm do
      url "https://github.com/ctrlplanedev/cli/releases/download/v#{version}/ctrlc_Linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "ctrlc"
  end

  test do
    system "#{bin}/ctrlc", "--version"
  end
end

