;/******************************************************************
;       Name: start.s
;Description: This asm file for stm32_f429_zi_discovery start up!
;			  and this is the code will be executed after reset!
;
;Author&Time: Alvin<alvin990228@gmail.com>  April.22.2015
;
;  Evolution: 0.0.1
;/******************************************************************

Stack_Size      EQU     0x00000400
				
                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000C00

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit


                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp              ; Top of Stack
    
				DCD     Reset_Handler             ; Reset Handler
                
__Vectors_End

__Vectors_Size  EQU     __Vectors_End - __Vectors

                AREA    TEXT, CODE, READONLY
				
				;ENTRY   ;entry point!
			
Reset_Handler   PROC
                
       
				
				MOV R0, #123
				NOP
				NOP
                ENDP
				

                END

