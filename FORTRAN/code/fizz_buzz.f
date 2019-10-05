        program fizzbuzz
        integer i, rem
        character test_fizz*4, test_buzz*4, fizz*4, buzz*4
        character both*10, test_both*10
        do i = 1, 100

                if(mod(i,3) .EQ. 0 .AND. mod(i,5) .NE. 0) then
                        write(*,*) 'Fizz'
                        if(i .EQ. 6) then
c 'Fizz' is assigned to 'test_fizz' when 'i' is '6' for testing purposes
                                test_fizz = 'Fizz'
                        endif
                endif

                if(mod(i,5) .EQ. 0 .AND. mod(i,3) .NE. 0) then
                        write(*,*) 'Buzz'
                        if(i .EQ. 10) then
c 'Buzz' is assigned to 'test_buzz' when 'i' is '10' for testing purposes
                                test_buzz = 'Buzz'
                        endif
                endif

                if(mod(i,3) .EQ. 0 .AND. mod(i,5) .EQ. 0) then
                        write(*,*) 'Fizz Buzz'
                        if(i .EQ. 15) then
c 'Fizz Buzz' is assigned to 'test_both' when 'i' is '15' for testing purposes
                        test_both = 'Fizz Buzz'
                        endif
                endif

                if(mod(i,3) .NE. 0 .AND. mod(i,5) .NE. 0) then
                        write(*,*) i
                endif
                 
        continue
        enddo

        write(*,*)
        write(*,*)
        write(*,*) '----------------------Testing----------------------'
        write(*,*)
        if(mod(6,3) .EQ. 0) then
                fizz = 'Fizz'
                if(test_fizz .EQ. fizz) then
                        write(*,*)
                        write(*,*) '6%3 = ', test_fizz
                        write(*,*) 'Fizz works correctly'
                else
                        write(*,*)
                        write(*,*) 'Fizz has faults'
                endif
        else
                write(*,*)
                write(*,*) 'Fizz has faults'
        endif

        if(mod(10,5) .EQ. 0) then
                buzz = 'Buzz'
                if(test_buzz .EQ. buzz) then
                        write(*,*)
                        write(*,*) '10%5 = ', test_buzz
                        write(*,*) 'Buzz works correctly'
                else
                        write(*,*)
                        write(*,*) 'Buzz has faults'
                endif
        else
                write(*,*)
                write(*,*) 'Buzz has faults'
        endif

        if(mod(15,5) .EQ. 0 .AND. mod(15,3) .EQ. 0) then
                both = 'Fizz Buzz'
                if(test_both .EQ. both) then
                        write(*,*)
                        write(*,*) '15%5 AND 15%3 = ', test_both
                        write(*,*) 'Fizz Buzz works correctly'
                        write(*,*)
                else
                        write(*,*)
                        write(*,*) 'Fizz Buzz has faults'
                        write(*,*)
                endif
        else
                write(*,*)
                write(*,*) 'Fizz Buzz has faults'
                write(*,*)
        endif

        stop
        end
