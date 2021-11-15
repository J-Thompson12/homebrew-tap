# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitops < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.3.8-rc4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/J-Thompson12/weave-gitops/releases/download/v0.3.8-rc4/gitops-darwin-x86_64"
      sha256 "33134bfaeadaf3f9f00e07d5027ec40027ea2eb9305e308eb4a0c70a5710c223"

      def install
        bin.install "gitops"
        chmod +x gitops
        sudo mv ./gitops /usr/local/bin/gitops
        bash_output = Utils.safe_popen_read(bin/"gitops", "completion", "bash")
        (bash_completion/"gitops").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"gitops", "completion", "zsh")
        (zsh_completion/"_gitops").write zsh_output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/J-Thompson12/weave-gitops/releases/download/v0.3.8-rc4/gitops-darwin-arm64"
      sha256 "23a1d2ecafe225bdb350a5cf56be99f280579244e2e27b56c7271da4e85f22fa"

      def install
        bin.install "gitops"
        chmod +x gitops
        sudo mv ./gitops /usr/local/bin/gitops
        bash_output = Utils.safe_popen_read(bin/"gitops", "completion", "bash")
        (bash_completion/"gitops").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"gitops", "completion", "zsh")
        (zsh_completion/"_gitops").write zsh_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/J-Thompson12/weave-gitops/releases/download/v0.3.8-rc4/gitops-linux-x86_64"
      sha256 "797da0adf92565ec7ce5e399273fe75fa0a984ca4330d1c19d100fee185581ff"

      def install
        bin.install "gitops"
        chmod +x gitops
        sudo mv ./gitops /usr/local/bin/gitops
        bash_output = Utils.safe_popen_read(bin/"gitops", "completion", "bash")
        (bash_completion/"gitops").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"gitops", "completion", "zsh")
        (zsh_completion/"_gitops").write zsh_output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/J-Thompson12/weave-gitops/releases/download/v0.3.8-rc4/gitops-linux-arm64"
      sha256 "cd483495b507bb935bfc547e5d57ebbab84f4010b0568733b04c634ec5c2e82d"

      def install
        bin.install "gitops"
        chmod +x gitops
        sudo mv ./gitops /usr/local/bin/gitops
        bash_output = Utils.safe_popen_read(bin/"gitops", "completion", "bash")
        (bash_completion/"gitops").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"gitops", "completion", "zsh")
        (zsh_completion/"_gitops").write zsh_output
      end
    end
  end

  test do
    system "#{bin}/gitops version"
  end
end
