#include <stdio.h>
#include <stddef.h>
#include <stdint.h>

typedef struct {
  const int TypeId;
  const size_t TypeSize;
  const char* TypeName;
} AtomType;

typedef struct {
  const int TypeId;
  const char* TypeName;
} ChainType;

typedef struct {
  const int TypeId;
  const void* Data;
  const int InputTypeId;
  const int OutputTypeId;
} Word;

typedef struct {
  const int TypeId;
  void* ConsCar;
  void* ConsCdr;
} Cons;

typedef struct {
  const int TypeId;
  uint8_t Data;
} Logic;

//Some type definitions
const AtomType EccCons = {0, sizeof(Cons), "cons"};
const ChainType EccSymbol = {1,"symbol"};
const AtomType EccBool = {2, 1, "bool"};

//Some important lisp constant primitives
const Cons nil = {0,(void *)&nil, (void *)&nil};
const Logic yep = {2,1};
const Logic nop = {2,0};
