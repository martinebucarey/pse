OUTPUT_FORMAT("elf32-tradbigmips")
OUTPUT_ARCH("mips:isa32r2")
ENTRY(_start)

SECTIONS
{
  .text : {
        *(.text)
	*(.rodata)
	*(.rodata1)
	*(.rodata.str1.4)
        }

  .reginfo : { *(.reginfo) }

  .date : {
	*(.data)
	}

  .bss  : {
	*(.dynbss)
	*(.bss)
  }
}
