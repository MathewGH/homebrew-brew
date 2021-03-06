# This file was generated by GoReleaser. DO NOT EDIT.
class Mongocli < Formula
  desc "The MongoDB Command Line Interface (mongocli) is a tool for managing your MongoDB cloud services, like MongoDB Atlas, MongoDB Cloud Manager, and MongoDB Ops Manager."
  homepage "https://github.com/mongodb/mongocli"
  version "1.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mongodb/mongocli/releases/download/v1.7.0/mongocli_1.7.0_macos_x86_64.zip"
    sha256 "64af9d5dd3c8c8f037de4e8e8567b515c365922214792d15d7780f80ef8e4711"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mongodb/mongocli/releases/download/v1.7.0/mongocli_1.7.0_linux_x86_64.tar.gz"
      sha256 "346cfd2366a863cb33ce53698cceb2e8a313d09858110c3ef3ac6b6662d94643"
    end
  end

  def install
    bin.install "mongocli"
    (bash_completion/"mongocli.sh").write `#{bin}/mongocli completion bash`
    (zsh_completion/"_mongocli").write `#{bin}/mongocli completion zsh`
    (fish_completion/"mongocli.fish").write `#{bin}/mongocli completion fish`
  end

  test do
    system "#{bin}/mongocli --version"
  end
end
