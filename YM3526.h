/*
*/

#ifndef ARMYM3526_HEADER
#define ARMYM3526_HEADER

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
	u8 registers[256];
	u8 regIndex;
	u8 padding[3];
} ym3526;


void ym3526Reset(ym3526 *chip, int chiptype);
void ym3526Mixer(ym3526 *chip, int len, void *dest);
void ym3526IndexW(ym3526 *chip, u8 value);
void ym3526DataW(ym3526 *chip, u8 value);
void ym3526DataR(ym3526 *chip, u8 value);


#ifdef __cplusplus
}
#endif

#endif // ARMYM3526_HEADER
