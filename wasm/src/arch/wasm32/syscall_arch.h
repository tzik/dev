#define __SYSCALL_LL_E(x) \
((union { long long ll; long l[2]; }){ .ll = x }).l[0], \
((union { long long ll; long l[2]; }){ .ll = x }).l[1]
#define __SYSCALL_LL_O(x) __SYSCALL_LL_E((x))

long __syscall0(long n);
long __syscall1(long n, long a1);
long __syscall2(long n, long a1, long a2);
long __syscall3(long n, long a1, long a2, long a3);
long __syscall4(long n, long a1, long a2, long a3, long a4);
long __syscall5(long n, long a1, long a2, long a3, long a4, long a5);
long __syscall6(long n, long a1, long a2, long a3, long a4, long a5, long a6);

#define VDSO_USEFUL
#define VDSO_CGT_SYM "__vdso_clock_gettime"
#define VDSO_CGT_VER "LINUX_2.6"

#define SYSCALL_USE_SOCKETCALL
