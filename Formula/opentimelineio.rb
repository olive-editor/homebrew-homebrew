class Opentimelineio < Formula
  desc "Open Source API and interchange format for editorial timeline information."
  homepage "http://opentimeline.io"
  license "NOASSERTION"
  head "https://github.com/PixarAnimationStudios/OpenTimelineIO.git", tag: "v0.13"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build", "install"
  end

  test do
    # No idea if this does anything
    system "ctest", "build"
  end
end
