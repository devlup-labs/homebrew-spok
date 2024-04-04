# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spok < Formula
  desc "Sans Password or Key (SPoK) - An easier way for remote server authentication."
  homepage "https://github.com/devlup-labs/spok"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ed6789b62ce5a5c7259749c7b8a79d9d1da5d9a75f82191a668a4270daa8221"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "01790a66075bf645bc8a87b3e6bcff107170767fb80aa283a7bd5d83611b0ef3"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9b6744f9eb176dda13ee11909414e78c0a2f4ffcf65d6803c44e13f00095e332"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd9dfe31615a5ee661b60a54bc67d8b266bc5831dc0686a4d31284719d5f6a78"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
  end
end
