/* Created by: Jonathan Pasco-Arnone
 * Created April 2022
 * This program generates a sum
 */

/*The data section filled with variables*/
.data
    string: .asciz "The sum is: %d\n"

/*The text section filled with code*/
.text

.extern printf
.global main
main:
    push {ip, lr}

    ldr r0, =string
    mov r2, #-3
    mov r1, #2
    add r1, r1, r2
    bl printf        /*Seems to always read r1*/

    pop {ip, pc}
