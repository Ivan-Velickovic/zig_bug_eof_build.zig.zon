const std = @import("std");
const zon: struct {
    name: enum { testing },
    version: []const u8,
    fingerprint: u64,
    minimum_zig_version: []const u8,
    dependencies: struct {},
    paths: []const []const u8,
} = @import("build.zig.zon");

pub fn main() !void {
    std.debug.print("{s}\n", .{ zon.minimum_zig_version });
}
