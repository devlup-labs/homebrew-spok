# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spok < Formula
  desc "Sans Password or Key (SPoK) - An easier way for remote server authentication."
  homepage "https://github.com/devlup-labs/spok"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "35e30ecc3f36ad7e47da9eb0c6caf95209480918709fd0b0e8f1399dc8caf114"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
    on_arm do
      url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe41dd7361ca493a68e99e3b419ee9fd64f01da11d14f6771eabbb75c9b7b77a"

      def install
        bin.install "bin/spok"

        (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "afdfb44ceae4a672cacf615a887f72b18c1f17348e356ca5d9fd392e643c45ec"

        def install
          bin.install "bin/spok"

          (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devlup-labs/spok/releases/download/0.1.0/spok_0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "5fbb8e129c2972f7338d4c868ce45754f72e972cac3ef9f27e5d876bc329733d"

        def install
          bin.install "bin/spok"

          (etc/"spok"/"scripts").install "scripts/configure-spok-server.sh"
        end
      end
    end
  end
end
