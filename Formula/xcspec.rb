class Xcspec < Formula
  desc "A tool to inspect iOS, macOS and Apple-like frameworks"
  homepage "https://github.com/eaceto/xcspec"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-macos-x86_64"
      sha256 "aeaa95d6e186e436604128ceeeefccd3c801a593227bdd775ad067d26515b9cf"
      def install
        bin.install "xcspec-macos-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-macos-arm64"
      sha256 "20e2ec82204d6e813d2d21bf4dc30a5724aa7e6bd03c30704086ff5bde2f2793"
      def install
        bin.install "xcspec-macos-arm64" => "xcspec"
      end
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-linux-x86_64"
      sha256 "d7777479d432dfb614dba8b30216d19bc91237d8cac3c2a292d1bcae44abe062"
      def install
        bin.install "xcspec-linux-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-linux-arm64"
      sha256 "02e3d92a6aed110cac90509a816adb12d66aeed1af90423485659fe36aed424d"
      def install
        bin.install "xcspec-linux-arm64" => "xcspec"
      end
    end
  elsif OS.windows?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-windows-x86_64.exe"
      sha256 "42962dc618da4620096df6cce522004040f109dbdfc2303d58984397455c59b4"
      def install
        bin.install "xcspec-windows-x86_64.exe" => "xcspec.exe"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.0.0/xcspec-windows-arm64.exe"
      sha256 "e5c728456479673fb36787a8511196a6ab827be892e748b240f102b20e5a36e4"
      def install
        bin.install "xcspec-windows-arm64.exe" => "xcspec.exe"
      end
    end
  end

  test do
    assert_match "xcspec, version", shell_output("#{bin}/xcspec --version")
  end
end
