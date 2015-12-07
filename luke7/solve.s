#knowit kalender luke 7
.globl solve7

solve7:
    pushl   %ebp
    movl    %esp,%ebp

    movl    $0,%ebx     #count
    pushl   %ebx        #pushed to stack to free registry
    movl    $0,%ecx     #first number to check,
    pushl   %ecx        #pushed to stack to free it up
    

_count:
    popl    %ecx        #popping cur number from stack
    addl    $7,%ecx     #number (to be reversed) going 7 and 7 at a time
    pushl   %ecx        #pushing to stack to free ecx

    cmpl    $1000,%ecx  #done if number bigger than 1000
    jg      _end

    movl    $0,%eax      #'reverse'-arg (always starts at 0)

_reverse:
    cmpl    $0,%ecx     #check if 0 (done reversing)
    je      _modreverse #then jump to modreverse

    movl    $10,%ebx
    mul     %ebx        #multiplying 'reverse' with 10

    pushl   %eax        #save 'reverse'

    movl    %ecx,%eax   #putting 'number' in eax
    movl    $0,%edx     #clearing edx (before division)
    div     %ebx

    movl    %eax,%ecx   #moving result back to ecx

    popl    %eax        #'reverse' in eax again
    addl    %edx,%eax   #'number' modulo 10 added to reverse

    jmp     _reverse    

_modreverse:
    movl    $7,%ebx
    movl    $0,%edx
    div     %ebx        #divide 'reverse' with 7
    cmpl    $0,%edx     #checking if divideable
    jne     _count      #if not move on
                        #else
    popl    %ecx        #pop current number
    popl    %ebx        #pop total count
    addl    %ecx,%ebx   #add current number to total count
    pushl   %ebx        #push back to stack
    pushl   %ecx

    jmp     _count

_end:
    popl    %ecx        #clean stack
    popl    %eax        #total count is return val
    popl    %ebp

    ret
