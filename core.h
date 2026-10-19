#include <stdio.h>
#include <stddef.h>
#include <stdint.h>

typedef struct {
  const void* ParentType;
  const size_t TypeSize;
  const char* TypeName;
} AtomType;

typedef struct {
  const void* ParentType;
  const char* TypeName;
} ChainType;

typedef struct {
  
} WordType;

typedef struct {
  const int TypeId;
  const void* Data;
  const int InputTypeId;
  const int OutputTypeId;
} Word;

typedef struct {
  
}

typedef struct {
  const void* Type;
  void* ConsCar;
  void* ConsCdr;
} Cons;

typedef struct {
  const int TypeId;
  uint8_t Data;
} Logic;

//Some type definitions
const AtomType EccCons = {(void *) &EccCons, sizeof(Cons), "cons"};
const AtomType EccSymbol = {(void *) &EccSymbol,3 * sizeof(void *),"symbol"};
const AtomType EccBool = {(void *) &EccBool, 1, "bool"};

//Some important lisp constant primitives
const Cons nil = {0,(void *)&nil, (void *)&nil};
const Logic yep = {2,1};
const Logic nop = {2,0};
