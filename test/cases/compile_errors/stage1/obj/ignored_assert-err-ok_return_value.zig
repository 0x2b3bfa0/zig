export fn foo() void {
    bar() catch unreachable;
}
fn bar() anyerror!i32 { return 0; }

// error
// backend=stage1
// target=native
//
// tmp.zig:2:11: error: expression value is ignored
