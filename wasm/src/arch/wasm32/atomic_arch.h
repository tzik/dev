#define a_cas a_cas
int a_cas(volatile int *p, int t, int s);

#define a_swap a_swap
int a_swap(volatile int *p, int v);

#define a_fetch_add a_fetch_add
int a_fetch_add(volatile int *p, int v);

#define a_and a_and
void a_and(volatile int *p, int v);

#define a_or a_or
void a_or(volatile int *p, int v);

#define a_inc a_inc
void a_inc(volatile int *p);

#define a_dec a_dec
void a_dec(volatile int *p);

#define a_store a_store
void a_store(volatile int *p, int x);

#define a_barrier a_barrier
void a_barrier();

#define a_spin a_spin
void a_spin();

#define a_crash a_crash
void a_crash();

#define a_ctz_64 a_ctz_64
int a_ctz_64(uint64_t x);

#define a_ctz_l a_ctz_l
int a_ctz_l(unsigned long x);
