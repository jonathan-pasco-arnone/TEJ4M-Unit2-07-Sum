.data
string: .asciz "The number is: %d\n"

.extern printf
.text

.extern printf

.global main
main:
        push {ip, lr}

        ldr r0, =string
        mov r1, #1024
        bl printf

        pop {ip, pc}
