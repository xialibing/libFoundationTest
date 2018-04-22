EXECUTABLE:=test  # 可执行文件名
LIBDIR:=.  # 静态库目录
LIBS:=Foundation pthread  # 静态库文件名
INCLUDES:=.  # 头文件目录
SRCDIR:=. # 除了当前目录外，其他的源代码文件目录

CC=g++
CFLAGS:=-g -Wall -O3
CPPFLAGS:=$(CFLAGS)
CPPFLAGS+=$(addprefix -I,$(INCLUDES))


SRCS=main.cpp


OBJS=$(SRCS:.cpp=.o)
$(EXECUTABLE):$(OBJS)
	$(CC) -o $(EXECUTABLE) $(OBJS) $(addprefix -L,$(LIBDIR)) $(addprefix -l,$(LIBS))

clean:
	rm -rf $(OBJS)
	rm -rf $(EXECUTABLE)
