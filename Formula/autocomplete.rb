# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Autocomplete < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/J-Thompson12/autocomplete/releases/download/v0.6.0/autocomplete-darwin-arm64"
      sha256 "9e1397b635d2083b2e8d11222f186c59ae0f22b72010e2e6798378e1eaab6d15"

      def install
        bin.install "autocomplete"
        bash_output = Utils.safe_popen_read(bin/"autocomplete", "completion", "bash")
        (bash_completion/"autocomplete").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"_autocomplete", "completion", "zsh")
        (zsh_completion/"_autocomplete").write zsh_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/J-Thompson12/autocomplete/releases/download/v0.6.0/autocomplete-darwin-x86_64"
      sha256 "8df8cdd0b8d5f1d6fa0a4d232c5eee581f02fe25922030482d385e8c1a8a11cf"

      def install
        bin.install "autocomplete"
        bash_output = Utils.safe_popen_read(bin/"autocomplete", "completion", "bash")
        (bash_completion/"autocomplete").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"_autocomplete", "completion", "zsh")
        (zsh_completion/"_autocomplete").write zsh_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/J-Thompson12/autocomplete/releases/download/v0.6.0/autocomplete-linux-x86_64"
      sha256 "15abbae4bee49cd8c2557d0c00983c0e0a16e718aa966c30daeac39f8d611c6b"

      def install
        bin.install "autocomplete"
        bash_output = Utils.safe_popen_read(bin/"autocomplete", "completion", "bash")
        (bash_completion/"autocomplete").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"_autocomplete", "completion", "zsh")
        (zsh_completion/"_autocomplete").write zsh_output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/J-Thompson12/autocomplete/releases/download/v0.6.0/autocomplete-linux-arm64"
      sha256 "6eb70c763872bf5057aa17ca99ab3839eb6c34f7f1b4aea5458acabf01d086d7"

      def install
        bin.install "autocomplete"
        bash_output = Utils.safe_popen_read(bin/"autocomplete", "completion", "bash")
        (bash_completion/"autocomplete").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"_autocomplete", "completion", "zsh")
        (zsh_completion/"_autocomplete").write zsh_output
      end
    end
  end

  test do
    system "#{bin}/autocomplete"
  end
end
