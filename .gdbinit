# 打印STL容器中的内容
# python
# import sys
# sys.path.insert(0, "/home/xmj/project/gcc-trunk/libstdc++-v3/python")
# from libstdcxx.v6.printers import register_libstdcxx_printers
# register_libstdcxx_printers (None)
# end
# 保存历史命令
	set history filename ~/.gdb_history
	set history save on
# 退出时不显示提示信息
	set confirm off
# 按照派生类型打印对象
	set print object on
# 打印数组的索引下标
	set print array-indexes on
# 每行打印一个结构体成员
	set print pretty on
# 不限制打印大数组中内容的个数
	set print elements 0
# 输出信息多时不会暂停输出
	set pagination off

# 定义宏命令
define mv
    if $argc == 2
        delete $arg0
        # 注意新创建的断点编号和被删除断点的编号不同
        break $arg1
    else
        print "输入参数数目不对，help mv以获得用法"
    end
end

# (gdb) help mv 会输出以下帮助文档
document mv
Move breakpoint.
Usage: mv old_breakpoint_num new_breakpoint
Example:
    (gdb) mv 1 binary_search -- move breakpoint 1 to `b binary_search`

end
