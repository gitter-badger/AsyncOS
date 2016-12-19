ENTRY(_boot)

SECTIONS {
    /* We mount the kernel at 1 megabyte. */
    . = 1M;

	/* The boot section comes first and MUST not be auto-removed. */
	.boot : { *(.multiboot) }

	/* Followed by the kernel source. */
	.text : { *(.text) }
}
