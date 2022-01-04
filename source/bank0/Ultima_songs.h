extern const void* Ultima_III_a_data;
extern const void* Ultima_III_b_data;
extern const void* Ultima_III_e_data;

#define __ass	asm volatile



extern unsigned long ym_data_current;

extern unsigned long do_ym_sound;
extern unsigned long init_ym_sound;

#define ym_cdata    ym_data_current
#define __YM_SOUND  do_ym_sound
#define __YM_INIT   init_ym_sound

#define __MC6809_jsr_clobberAll(args...)	__mc6809_jsr_clobberAll(args)
#define asm_ym_sound() __MC6809_jsr_clobberAll(__YM_SOUND, YM_SOUND, d, u, x, dp)

#define __MC6809_jsr_u__dxy(args...)		__mc6809_jsr_u__dxy(args)
#define _asm_ym_init(U) __MC6809_jsr_u__dxy(U, __YM_INIT, YM_INIT, d, x, u)

#ifdef OMMIT_FRAMEPOINTER

#define __mc6809_jsr_clobberAll(func, name, regs...) { \
	__ass( \
		"jsr " #func "; " #name "\n\t" \
		:: \
		: "s", "memory", "cc","a","b","d","dp","u","y","x"); \
}
#define __mc6809_jsr_u__dxy(u, func, name, regs...) { \
	__ass( \
		"ldu %[U]\n\t" \
		"jsr " #func "; " #name "\n\t" \
		:: [U] "m" (u) \
		: "memory","d", "u", "x","y","cc"); \
}


#else

#define __mc6809_jsr_clobberAll(func, name, regs...) { \
	__ass( \
		"pshs u\n\t" \
		"jsr " #func "; " #name "\n\t" \
		"puls u\n\t" \
		:: \
		: "s", "memory", "cc","a","b","d","dp","y","x"); \
}
#define __mc6809_jsr_u__dxy(u, func, name, regs...) { \
	__ass( \
		"leax, u\n\t" \
		"ldu %[U]\n\t" \
		"pshs x\n\t" \
		"jsr " #func "; " #name "\n\t" \
		"puls u\n\t" \
		:: [U] "m" (u) \
		: "memory","d", "x","y","cc"); \
}

#endif


__INLINE void ym_sound() \
  {asm_ym_sound(); } 

__INLINE void ym_init(void* volatile u) \
 {_asm_ym_init(u); } 

