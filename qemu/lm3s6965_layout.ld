/* This linkerscript is derived from the memory layout of TI Stellaris LM3S6965
 * Refer Refer: http://www.ti.com/lit/ds/symlink/lm3s6965.pdf Table 2-4
 */

MEMORY {
        FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 256K
        SRAM  (rw) : ORIGIN = 0x20000000, LENGTH = 64K
}

SECTIONS {
        . = 0x00000000;
        .text : {
            KEEP(*(.vectors))
            *(.startup)
            *(.text)
            *(.rodata)
            . = ALIGN(4);
        } > FLASH

        .data : {
            . = ALIGN(4);
            _sram_sdata = .;
            *(.data);
            . = ALIGN(4);
            _sram_edata = .;
        } > SRAM AT > FLASH

        _flash_sdata = LOADADDR(.data);

        .bss :{
            . = ALIGN(4);
            _sram_sbss = .;
            __bss_start__ = .;
            *(.bss)
            __bss_end__ = .;
            *(COMMON)
            . = ALIGN(4);
            _sram_ebss = .;
        } > SRAM

        .heap : {
            __heap_start__ = .;
            end = __heap_start__;
            _end = end;
            __end = end;
            KEEP(*(.heap))
            __heap_end__ = .;
            __HeapLimit = __heap_end__;
        } > SRAM

        _sram_stacktop = ORIGIN(SRAM) + LENGTH(SRAM);

        .ARM.extab   : { *(.ARM.extab* .gnu.linkonce.armextab.*) } >FLASH
        .ARM : {
            __exidx_start = .;
            *(.ARM.exidx*)
            __exidx_end = .;
        } >FLASH
}
