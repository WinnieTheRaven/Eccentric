#include <stdio.h>

typedef struct {
  const int TypeId;
  const size_t TypeSize;
  const char* TypeName;
} EccType;

typedef struct {
  const int TypeId;
  const short IsMutable;
  const void* data;
} EccConstant;

typedef struct {
  const int TypeId;
  const short IsMutable;
  const void* data;
} EccParameter;

typedef struct {
  void* car;
  void* cdr;
} Cons;

const EccType EccCons = {0, sizeof(Cons), "cons"};
const EccType EccBool = {1, (size_t)1, "bool"};
const EccConstant FuckingNil = {0,0,(void *) &FuckingNil};
const Cons nil = {(void *)&FuckingNil, (void *)&FuckingNil};
