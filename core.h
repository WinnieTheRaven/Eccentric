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
  const void* Data;
  const int InputTypeId;
  const int OutputTypeId;
  const int TypeId;
} Word;

typedef struct {
  void* ConsCar;
  void* ConsCdr;
  const int TypeId;
} Cons;

typedef struct {
  uint8_t Data;
  const int TypeId;
} Logic;

//Some type definitions
const AtomType EccCons = {0, sizeof(Cons), "cons"};
const ChainType EccSymbol = {1,"symbol"};
const AtomType EccBool = {2, 1, "bool"};

//Some important lisp constant primitives
const Cons nil = {(void *)&nil, (void *)&nil, 0};
const Logic yep = {1,2};
const Logic nop = {0,2};
